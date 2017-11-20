.class public Lcom/google/android/gms/location/places/personalized/PlaceAlias;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/personalized/a;

.field public static final a:Lcom/google/android/gms/location/places/personalized/PlaceAlias;

.field public static final b:Lcom/google/android/gms/location/places/personalized/PlaceAlias;


# instance fields
.field final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/google/android/gms/location/places/personalized/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->CREATOR:Lcom/google/android/gms/location/places/personalized/a;

    .line 29
    new-instance v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    const-string v1, "Home"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/places/personalized/PlaceAlias;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->a:Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    .line 34
    new-instance v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    const-string v1, "Work"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/places/personalized/PlaceAlias;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->b:Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->c:I

    .line 80
    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->d:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static a()Lcom/google/android/gms/location/places/personalized/PlaceAlias;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->a:Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/location/places/personalized/PlaceAlias;
    .locals 3

    .prologue
    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alias cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    const-string v0, "Home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Work"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This alias is reserved for other uses: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    new-instance v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/location/places/personalized/PlaceAlias;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/location/places/personalized/PlaceAlias;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->b:Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->CREATOR:Lcom/google/android/gms/location/places/personalized/a;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 90
    if-ne p0, p1, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 93
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    if-nez v0, :cond_1

    .line 94
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "alias"

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->CREATOR:Lcom/google/android/gms/location/places/personalized/a;

    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/personalized/a;->a(Lcom/google/android/gms/location/places/personalized/PlaceAlias;Landroid/os/Parcel;)V

    .line 125
    return-void
.end method
