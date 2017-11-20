.class public final Lcom/google/android/gms/location/places/PlaceRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/p;

.field static final a:J


# instance fields
.field final b:I

.field private final c:Lcom/google/android/gms/location/places/PlaceFilter;

.field private final d:J

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 156
    new-instance v0, Lcom/google/android/gms/location/places/p;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlaceRequest;->CREATOR:Lcom/google/android/gms/location/places/p;

    .line 168
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/location/places/PlaceRequest;->a:J

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/location/places/PlaceFilter;JI)V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Lcom/google/android/gms/location/places/PlaceRequest;->b:I

    .line 211
    iput-object p2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->c:Lcom/google/android/gms/location/places/PlaceFilter;

    .line 212
    iput-wide p3, p0, Lcom/google/android/gms/location/places/PlaceRequest;->d:J

    .line 213
    iput p5, p0, Lcom/google/android/gms/location/places/PlaceRequest;->e:I

    .line 214
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/location/places/PlaceFilter;JI)V
    .locals 8

    .prologue
    .line 196
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/location/places/PlaceRequest;-><init>(ILcom/google/android/gms/location/places/PlaceFilter;JI)V

    .line 197
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/location/places/PlaceFilter;JIB)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/location/places/PlaceRequest;-><init>(Lcom/google/android/gms/location/places/PlaceFilter;JI)V

    return-void
.end method

.method public static synthetic a(I)V
    .locals 3

    .prologue
    .line 26
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid priority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic a(J)V
    .locals 4

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid interval: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceRequest;->c:Lcom/google/android/gms/location/places/PlaceFilter;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/google/android/gms/location/places/PlaceRequest;->d:J

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/google/android/gms/location/places/PlaceRequest;->e:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/google/android/gms/location/places/PlaceRequest;->CREATOR:Lcom/google/android/gms/location/places/p;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 257
    if-ne p0, p1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/PlaceRequest;

    if-nez v2, :cond_2

    move v0, v1

    .line 261
    goto :goto_0

    .line 263
    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/PlaceRequest;

    .line 264
    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->c:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceRequest;->c:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/location/places/PlaceRequest;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->e:I

    iget v3, p1, Lcom/google/android/gms/location/places/PlaceRequest;->e:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 252
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->c:Lcom/google/android/gms/location/places/PlaceFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "filter"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->c:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "interval"

    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "priority"

    iget v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/google/android/gms/location/places/PlaceRequest;->CREATOR:Lcom/google/android/gms/location/places/p;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/p;->a(Lcom/google/android/gms/location/places/PlaceRequest;Landroid/os/Parcel;I)V

    .line 301
    return-void
.end method
