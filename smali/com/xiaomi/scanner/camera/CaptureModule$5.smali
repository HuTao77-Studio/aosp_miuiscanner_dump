.class Lcom/xiaomi/scanner/camera/CaptureModule$5;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$5;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 907
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$5;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$500(Lcom/xiaomi/scanner/camera/CaptureModule;)Lcom/xiaomi/scanner/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->onPreviewStarted()V

    .line 908
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$5;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$600(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    .line 909
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$5;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$700(Lcom/xiaomi/scanner/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$5;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$900(Lcom/xiaomi/scanner/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$5;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$800(Lcom/xiaomi/scanner/camera/CaptureModule;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
