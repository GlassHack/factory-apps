.class public Lcom/google/android/gms/fitness/data/DataSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/data/DataSource$1;,
        Lcom/google/android/gms/fitness/data/DataSource$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_DERIVED:I = 0x1

.field public static final TYPE_RAW:I


# instance fields
.field private final CL:Lcom/google/android/gms/fitness/data/DataType;

.field private final CO:Lcom/google/android/gms/fitness/data/Device;

.field private final CP:Lcom/google/android/gms/fitness/data/Application;

.field private final CQ:Ljava/lang/String;

.field private final CR:Z

.field private final CS:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mVersionCode:I

.field private final tl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/f;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;Ljava/lang/String;ILcom/google/android/gms/fitness/data/Device;Lcom/google/android/gms/fitness/data/Application;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "device"    # Lcom/google/android/gms/fitness/data/Device;
    .param p6, "application"    # Lcom/google/android/gms/fitness/data/Application;
    .param p7, "streamName"    # Ljava/lang/String;
    .param p8, "isObfuscated"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataSource;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CL:Lcom/google/android/gms/fitness/data/DataType;

    iput p4, p0, Lcom/google/android/gms/fitness/data/DataSource;->tl:I

    iput-object p3, p0, Lcom/google/android/gms/fitness/data/DataSource;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    iput-object p6, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/DataSource;->CQ:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/fitness/data/DataSource;->CR:Z

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataSource;->dy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/DataSource$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gms/fitness/data/DataSource$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->mVersionCode:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->a(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CL:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->b(Lcom/google/android/gms/fitness/data/DataSource$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->tl:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->c(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->mName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->d(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->e(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->f(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CQ:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->g(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CR:Z

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataSource;->dy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CS:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/data/DataSource$Builder;Lcom/google/android/gms/fitness/data/DataSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/fitness/data/DataSource$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/DataSource;-><init>(Lcom/google/android/gms/fitness/data/DataSource$Builder;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CL:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSource;->CL:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->tl:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/DataSource;->tl:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSource;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CQ:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSource;->CQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dy()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataSource;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CL:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    if-eqz v1, :cond_0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v1, :cond_1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Device;->getStreamIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->CQ:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->tl:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "raw"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "derived"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dA()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    if-nez v1, :cond_0

    move-object v5, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    if-nez v1, :cond_1

    move-object v6, v0

    :goto_1
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CL:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataSource;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/fitness/data/DataSource;->tl:I

    iget-object v7, p0, Lcom/google/android/gms/fitness/data/DataSource;->CQ:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/cj;->ah(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/gms/fitness/data/DataSource;->CR:Z

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/fitness/data/DataSource;-><init>(ILcom/google/android/gms/fitness/data/DataType;Ljava/lang/String;ILcom/google/android/gms/fitness/data/Device;Lcom/google/android/gms/fitness/data/Application;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Device;->dB()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Application;->dv()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v6

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CR:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataSource;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/DataSource;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getApplication()Lcom/google/android/gms/fitness/data/Application;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CL:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public getDevice()Lcom/google/android/gms/fitness/data/Device;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CS:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CQ:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->tl:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->tl:I

    if-nez v0, :cond_0

    const-string v0, "r"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->CL:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->toShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Device;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CQ:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CQ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "d"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    sget-object v2, Lcom/google/android/gms/fitness/data/Application;->GOOGLE_PLAY_SERVICES:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/Application;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ":gms"

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    const-string v0, ""

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataSource{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataSource;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    if-eqz v1, :cond_1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CP:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v1, :cond_2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CO:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->CQ:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->CL:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/internal/cj;->b(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/fitness/data/f;->a(Lcom/google/android/gms/fitness/data/DataSource;Landroid/os/Parcel;I)V

    return-void
.end method
