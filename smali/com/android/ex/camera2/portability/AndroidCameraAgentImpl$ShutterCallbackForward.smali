.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutterCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

.field private final mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)V
    .locals 0

    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1201
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mHandler:Landroid/os/Handler;

    .line 1202
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1203
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    return-void
.end method

.method static synthetic access$1200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 0

    .line 1177
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;
    .locals 0

    .line 1177
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    return-object p0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1196
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward$1;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
