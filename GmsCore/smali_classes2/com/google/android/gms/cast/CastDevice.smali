.class public Lcom/google/android/gms/cast/CastDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/net/Inet4Address;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/util/List;

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/gms/cast/b;

    invoke-direct {v0}, Lcom/google/android/gms/cast/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/CastDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 171
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

    .line 173
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Lcom/google/android/gms/cast/CastDevice;->b:I

    .line 137
    iput-object p2, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 142
    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    .line 143
    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    .line 150
    iput-object p5, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    .line 151
    iput-object p6, p0, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/lang/String;

    .line 152
    iput p7, p0, Lcom/google/android/gms/cast/CastDevice;->h:I

    .line 153
    iput-object p8, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    .line 154
    iput p9, p0, Lcom/google/android/gms/cast/CastDevice;->j:I

    .line 155
    iput p10, p0, Lcom/google/android/gms/cast/CastDevice;->k:I

    .line 156
    return-void

    .line 146
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/net/Inet4Address;

    goto :goto_0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->b:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    if-ne p1, p0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/cast/CastDevice;

    if-nez v2, :cond_2

    move v0, v1

    .line 361
    goto :goto_0

    .line 363
    :cond_2
    check-cast p1, Lcom/google/android/gms/cast/CastDevice;

    .line 364
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 365
    iget-object v2, p1, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 368
    goto :goto_0

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/net/Inet4Address;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/net/Inet4Address;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->h:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->h:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->j:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->j:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->k:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->k:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->h:I

    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->j:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->k:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 342
    const-string v0, "\"%s\" (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 352
    invoke-static {p0, p1}, Lcom/google/android/gms/cast/b;->a(Lcom/google/android/gms/cast/CastDevice;Landroid/os/Parcel;)V

    .line 353
    return-void
.end method
