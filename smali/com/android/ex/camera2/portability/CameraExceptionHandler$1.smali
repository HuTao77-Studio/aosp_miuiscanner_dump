.class Lcom/android/ex/camera2/portability/CameraExceptionHandler$1;
.super Ljava/lang/Object;
.source "CameraExceptionHandler.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraExceptionHandler;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$1;->this$0:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraError(I)V
    .locals 0

    return-void
.end method

.method public onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    .locals 0

    .line 36
    throw p1
.end method

.method public onDispatchThreadException(Ljava/lang/RuntimeException;)V
    .locals 0

    .line 40
    throw p1
.end method
