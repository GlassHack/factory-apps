.class public final Lcom/google/android/gms/cast/CastDevice$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/CastDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic sI:Lcom/google/android/gms/cast/CastDevice;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/net/Inet4Address;)V
    .locals 1
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "ipAddress"    # Ljava/net/Inet4Address;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice$Builder;->sI:Lcom/google/android/gms/cast/CastDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p3}, Lcom/google/android/gms/cast/CastDevice;->a(Lcom/google/android/gms/cast/CastDevice;Ljava/net/Inet4Address;)Ljava/net/Inet4Address;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->a(Lcom/google/android/gms/cast/CastDevice;)Ljava/net/Inet4Address;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->a(Lcom/google/android/gms/cast/CastDevice;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/google/android/gms/cast/CastDevice;->sz:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/gms/cast/CastDevice;->a(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice$Builder;->sI:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method public setCapabilities(I)Lcom/google/android/gms/cast/CastDevice$Builder;
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice$Builder;->sI:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/CastDevice;->b(Lcom/google/android/gms/cast/CastDevice;I)I

    return-object p0
.end method

.method public setDeviceVersion(Ljava/lang/String;)Lcom/google/android/gms/cast/CastDevice$Builder;
    .locals 1
    .param p1, "deviceVersion"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice$Builder;->sI:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/CastDevice;->d(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFriendlyName(Ljava/lang/String;)Lcom/google/android/gms/cast/CastDevice$Builder;
    .locals 1
    .param p1, "friendlyName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice$Builder;->sI:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/CastDevice;->b(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setIcons(Ljava/util/List;)Lcom/google/android/gms/cast/CastDevice$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;)",
            "Lcom/google/android/gms/cast/CastDevice$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "icons":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/common/images/WebImage;>;"
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice$Builder;->sI:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/CastDevice;->a(Lcom/google/android/gms/cast/CastDevice;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setModelName(Ljava/lang/String;)Lcom/google/android/gms/cast/CastDevice$Builder;
    .locals 1
    .param p1, "modelName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice$Builder;->sI:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/CastDevice;->c(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setServicePort(I)Lcom/google/android/gms/cast/CastDevice$Builder;
    .locals 1
    .param p1, "servicePort"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice$Builder;->sI:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/CastDevice;->a(Lcom/google/android/gms/cast/CastDevice;I)I

    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/gms/cast/CastDevice$Builder;
    .locals 1
    .param p1, "deviceStatus"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice$Builder;->sI:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/CastDevice;->c(Lcom/google/android/gms/cast/CastDevice;I)I

    return-object p0
.end method
