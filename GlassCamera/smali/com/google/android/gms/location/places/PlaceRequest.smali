.class public final Lcom/google/android/gms/location/places/PlaceRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/PlaceRequest$1;,
        Lcom/google/android/gms/location/places/PlaceRequest$Builder;,
        Lcom/google/android/gms/location/places/PlaceRequest$Priority;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/g;

.field static final Hx:J


# instance fields
.field private final Gg:J

.field private final Hy:Lcom/google/android/gms/location/places/PlaceFilter;

.field private final mPriority:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/location/places/g;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlaceRequest;->CREATOR:Lcom/google/android/gms/location/places/g;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/location/places/PlaceRequest;->Hx:J

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/location/places/PlaceFilter;JI)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "filter"    # Lcom/google/android/gms/location/places/PlaceFilter;
    .param p3, "interval"    # J
    .param p5, "priority"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/PlaceRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Hy:Lcom/google/android/gms/location/places/PlaceFilter;

    iput-wide p3, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Gg:J

    iput p5, p0, Lcom/google/android/gms/location/places/PlaceRequest;->mPriority:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/location/places/PlaceFilter;JI)V
    .locals 6
    .param p1, "filter"    # Lcom/google/android/gms/location/places/PlaceFilter;
    .param p2, "interval"    # J
    .param p4, "priority"    # I

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/PlaceRequest;-><init>(ILcom/google/android/gms/location/places/PlaceFilter;JI)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/PlaceFilter;JILcom/google/android/gms/location/places/PlaceRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/location/places/PlaceFilter;
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # Lcom/google/android/gms/location/places/PlaceRequest$1;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/location/places/PlaceRequest;-><init>(Lcom/google/android/gms/location/places/PlaceFilter;JI)V

    return-void
.end method

.method static synthetic cO(I)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/location/places/PlaceRequest;->cv(I)V

    return-void
.end method

.method private static cv(I)V
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

.method private static g(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic h(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/PlaceRequest;->g(J)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/PlaceRequest;->CREATOR:Lcom/google/android/gms/location/places/g;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/PlaceRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/PlaceRequest;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Hy:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceRequest;->Hy:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Gg:J

    iget-wide v4, p1, Lcom/google/android/gms/location/places/PlaceRequest;->Gg:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->mPriority:I

    iget v3, p1, Lcom/google/android/gms/location/places/PlaceRequest;->mPriority:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getFilter()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Hy:Lcom/google/android/gms/location/places/PlaceFilter;

    return-object v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Gg:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/PlaceRequest;->mPriority:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Hy:Lcom/google/android/gms/location/places/PlaceFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Gg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "filter"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Hy:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "interval"

    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Gg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "priority"

    iget v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/k$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/location/places/PlaceRequest;->CREATOR:Lcom/google/android/gms/location/places/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/g;->a(Lcom/google/android/gms/location/places/PlaceRequest;Landroid/os/Parcel;I)V

    return-void
.end method
