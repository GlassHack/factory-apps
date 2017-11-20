.class public final Lcom/google/android/gms/location/places/UserDataType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/ao;

.field public static final a:Lcom/google/android/gms/location/places/UserDataType;

.field public static final b:Lcom/google/android/gms/location/places/UserDataType;

.field public static final c:Lcom/google/android/gms/location/places/UserDataType;

.field public static final d:Ljava/util/Set;


# instance fields
.field final e:I

.field final f:Ljava/lang/String;

.field final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 29
    const-string v0, "test_type"

    invoke-static {v0, v4}, Lcom/google/android/gms/location/places/UserDataType;->a(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->a:Lcom/google/android/gms/location/places/UserDataType;

    .line 30
    const-string v0, "trellis_store"

    invoke-static {v0, v5}, Lcom/google/android/gms/location/places/UserDataType;->a(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->b:Lcom/google/android/gms/location/places/UserDataType;

    .line 31
    const-string v0, "labeled_place"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/UserDataType;->a(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->c:Lcom/google/android/gms/location/places/UserDataType;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/gms/location/places/UserDataType;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/location/places/UserDataType;->a:Lcom/google/android/gms/location/places/UserDataType;

    aput-object v3, v1, v2

    sget-object v2, Lcom/google/android/gms/location/places/UserDataType;->b:Lcom/google/android/gms/location/places/UserDataType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/location/places/UserDataType;->c:Lcom/google/android/gms/location/places/UserDataType;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->d:Ljava/util/Set;

    .line 41
    new-instance v0, Lcom/google/android/gms/location/places/ao;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/ao;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->CREATOR:Lcom/google/android/gms/location/places/ao;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    iput p1, p0, Lcom/google/android/gms/location/places/UserDataType;->e:I

    .line 61
    iput-object p2, p0, Lcom/google/android/gms/location/places/UserDataType;->f:Ljava/lang/String;

    .line 62
    iput p3, p0, Lcom/google/android/gms/location/places/UserDataType;->g:I

    .line 63
    return-void
.end method

.method private static a(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/gms/location/places/UserDataType;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/location/places/UserDataType;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/location/places/UserDataType;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/gms/location/places/UserDataType;->g:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->CREATOR:Lcom/google/android/gms/location/places/ao;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    if-ne p0, p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/UserDataType;

    if-nez v2, :cond_2

    move v0, v1

    .line 75
    goto :goto_0

    .line 77
    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/UserDataType;

    .line 78
    iget-object v2, p0, Lcom/google/android/gms/location/places/UserDataType;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/UserDataType;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/UserDataType;->g:I

    iget v3, p1, Lcom/google/android/gms/location/places/UserDataType;->g:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/location/places/UserDataType;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gms/location/places/UserDataType;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->CREATOR:Lcom/google/android/gms/location/places/ao;

    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/ao;->a(Lcom/google/android/gms/location/places/UserDataType;Landroid/os/Parcel;)V

    .line 116
    return-void
.end method
