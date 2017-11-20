.class public final Lcom/google/android/gms/fitness/data/Device;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lcom/google/android/gms/fitness/data/l;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p1, p0, Lcom/google/android/gms/fitness/data/Device;->a:I

    .line 175
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->b:Ljava/lang/String;

    .line 176
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->c:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->d:Ljava/lang/String;

    .line 178
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->e:Ljava/lang/String;

    .line 179
    iput p5, p0, Lcom/google/android/gms/fitness/data/Device;->f:I

    .line 180
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 155
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/data/Device;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/fitness/data/Device;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/Device;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 82
    invoke-static {p0}, Lcom/google/android/gms/fitness/data/Device;->c(Landroid/content/Context;)I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x5

    packed-switch v0, :pswitch_data_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    .line 83
    :goto_1
    new-instance v0, Lcom/google/android/gms/fitness/data/Device;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/data/Device;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V

    return-object v0

    .line 82
    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/fitness/data/Device;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_1

    :pswitch_1
    move v4, v5

    goto :goto_1

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Lcom/google/android/gms/fitness/data/Device;Lcom/google/android/gms/fitness/data/Device;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 256
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 257
    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 260
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 257
    goto :goto_0

    .line 260
    :cond_3
    iget v2, p0, Lcom/google/android/gms/fitness/data/Device;->f:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Device;->f:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Device;->b:Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lcom/google/android/gms/fitness/internal/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Device;->c:Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lcom/google/android/gms/fitness/internal/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Device;->d:Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lcom/google/android/gms/fitness/internal/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Device;->e:Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lcom/google/android/gms/fitness/internal/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 106
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 126
    :try_start_0
    const-string v0, "com.google.android.gms"

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 128
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return v0

    .line 130
    :catch_0
    move-exception v0

    const-string v0, "Fitness"

    const-string v1, "Could not find package info for Google Play Services"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/google/android/gms/fitness/data/Device;->f:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 284
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/Device;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Device;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Device;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Device;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Device;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Device;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Device;->f:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Device;->f:I

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method final f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 229
    const-string v0, "%s:%s:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Device;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Device;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Device;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g()Lcom/google/android/gms/fitness/data/Device;
    .locals 6

    .prologue
    .line 238
    new-instance v0, Lcom/google/android/gms/fitness/data/Device;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Device;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/fitness/internal/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Device;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/fitness/internal/y;->b(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Device;->e:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/fitness/data/Device;->f:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/data/Device;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Device;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/fitness/internal/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 297
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Device;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/fitness/data/Device;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final i()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/google/android/gms/fitness/data/Device;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    const-string v0, "Device{%s:%s:%s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Device;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Device;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/fitness/data/Device;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 314
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/data/l;->a(Lcom/google/android/gms/fitness/data/Device;Landroid/os/Parcel;)V

    .line 315
    return-void
.end method
