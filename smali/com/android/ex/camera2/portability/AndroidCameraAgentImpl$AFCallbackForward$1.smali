.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward$1;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->onAutoFocus(ZLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;

.field final synthetic val$b:Z


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;Z)V
    .locals 0

    .line 1122
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward$1;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;

    iput-boolean p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward$1;->val$b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1125
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward$1;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->access$900(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward$1;->val$b:Z

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward$1;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;->onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    return-void
.end method
