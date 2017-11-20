.class public abstract Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;
.super Ljava/lang/Object;
.source "CameraApiProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static instance()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->instance:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->TAG:Ljava/lang/String;

    const-string v1, "No CameraApiProxy implementation set. Use CameraApiProxy.setActiveProxy first."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    sget-object v0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->instance:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;

    return-object v0
.end method

.method public static setActiveProxy(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;)V
    .locals 0
    .param p0, "proxy"    # Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;

    .prologue
    .line 41
    sput-object p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->instance:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;

    .line 42
    return-void
.end method


# virtual methods
.method public abstract openBackCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
.end method
