.class public Lcom/google/android/gms/cast/CastDevice;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/CastDevice$Builder;
    }
.end annotation


# static fields
.field public static final CAPABILITY_AUDIO_IN:I = 0x8

.field public static final CAPABILITY_AUDIO_OUT:I = 0x4

.field public static final CAPABILITY_DEVELOPER_MODE:I = 0x10

.field public static final CAPABILITY_VIDEO_IN:I = 0x2

.field public static final CAPABILITY_VIDEO_OUT:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/CastDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_STATUS_BUSY:I = 0x1

.field public static final DEVICE_STATUS_IDLE:I = 0x0

.field public static final DEVICE_STATUS_UNKNOWN:I = -0x1


# instance fields
.field private final mVersionCode:I

.field private sA:Ljava/net/Inet4Address;

.field private sB:Ljava/lang/String;

.field private sC:Ljava/lang/String;

.field private sD:Ljava/lang/String;

.field private sE:I

.field private sF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field

.field private sG:I

.field private sH:I

.field private sy:Ljava/lang/String;

.field sz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/b;

    invoke-direct {v0}, Lcom/google/android/gms/cast/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/CastDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move v10, v7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/cast/CastDevice;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "hostAddress"    # Ljava/lang/String;
    .param p4, "friendlyName"    # Ljava/lang/String;
    .param p5, "modelName"    # Ljava/lang/String;
    .param p6, "deviceVersion"    # Ljava/lang/String;
    .param p7, "servicePort"    # I
    .param p9, "capabilities"    # I
    .param p10, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p8, "icons":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/common/images/WebImage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/cast/CastDevice;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/cast/CastDevice;->sy:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cast/CastDevice;->sz:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sz:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sz:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sA:Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/cast/CastDevice;->sB:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/cast/CastDevice;->sC:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/cast/CastDevice;->sD:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/cast/CastDevice;->sE:I

    iput-object p8, p0, Lcom/google/android/gms/cast/CastDevice;->sF:Ljava/util/List;

    iput p9, p0, Lcom/google/android/gms/cast/CastDevice;->sG:I

    iput p10, p0, Lcom/google/android/gms/cast/CastDevice;->sH:I

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sA:Ljava/net/Inet4Address;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/cast/CastDevice;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/CastDevice;->sE:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->sy:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/cast/CastDevice;)Ljava/net/Inet4Address;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sA:Ljava/net/Inet4Address;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/cast/CastDevice;Ljava/net/Inet4Address;)Ljava/net/Inet4Address;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->sA:Ljava/net/Inet4Address;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/cast/CastDevice;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->sF:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/cast/CastDevice;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/CastDevice;->sG:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->sB:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/gms/cast/CastDevice;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/CastDevice;->sH:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->sC:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->sD:Ljava/lang/String;

    return-object p1
.end method

.method public static getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/CastDevice;

    goto :goto_0
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/net/Inet4Address;)Lcom/google/android/gms/cast/CastDevice$Builder;
    .locals 2
    .param p0, "deviceId"    # Ljava/lang/String;
    .param p1, "ipAddress"    # Ljava/net/Inet4Address;

    .prologue
    new-instance v0, Lcom/google/android/gms/cast/CastDevice$Builder;

    new-instance v1, Lcom/google/android/gms/cast/CastDevice;

    invoke-direct {v1}, Lcom/google/android/gms/cast/CastDevice;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/cast/CastDevice$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/net/Inet4Address;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/cast/CastDevice;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/cast/CastDevice;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->sy:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->sy:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->sA:Ljava/net/Inet4Address;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->sA:Ljava/net/Inet4Address;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->sC:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->sC:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->sB:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->sB:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->sD:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->sD:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->sE:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->sE:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->sF:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->sF:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->sG:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->sG:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->sH:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->sH:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->sG:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sy:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sD:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sB:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon(II)Lcom/google/android/gms/common/images/WebImage;
    .locals 9
    .param p1, "preferredWidth"    # I
    .param p2, "preferredHeight"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sF:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getHeight()I

    move-result v5

    if-lt v4, p1, :cond_4

    if-lt v5, p2, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->getWidth()I

    move-result v6

    if-le v6, v4, :cond_9

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->getHeight()I

    move-result v4

    if-le v4, v5, :cond_9

    :cond_3
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_2
    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_4
    if-ge v4, p1, :cond_9

    if-ge v5, p2, :cond_9

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getWidth()I

    move-result v6

    if-ge v6, v4, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getHeight()I

    move-result v4

    if-ge v4, v5, :cond_9

    :cond_5
    move-object v1, v2

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    :goto_3
    move-object v1, v2

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_8

    move-object v2, v1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sF:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    move-object v2, v0

    goto :goto_3

    :cond_9
    move-object v0, v1

    move-object v1, v2

    goto :goto_2
.end method

.method public getIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sF:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress()Ljava/net/Inet4Address;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sA:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sC:Ljava/lang/String;

    return-object v0
.end method

.method public getServicePort()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->sE:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->sH:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->mVersionCode:I

    return v0
.end method

.method public hasCapability(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->sG:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIcons()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sy:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->sy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->sH:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameDevice(Lcom/google/android/gms/cast/CastDevice;)Z
    .locals 2
    .param p1, "castDevice"    # Lcom/google/android/gms/cast/CastDevice;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public putInBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "\"%s\" (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->sB:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->sy:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/b;->a(Lcom/google/android/gms/cast/CastDevice;Landroid/os/Parcel;I)V

    return-void
.end method
