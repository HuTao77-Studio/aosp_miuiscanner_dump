.class Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$8;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$8;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$8;->val$h:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$8;->val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$8;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$8;->val$h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$8;->val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    .line 587
    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;

    move-result-object v1

    const/16 v2, 0x66

    .line 586
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
