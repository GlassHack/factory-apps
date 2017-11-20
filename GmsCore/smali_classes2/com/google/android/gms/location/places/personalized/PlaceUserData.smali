.class public Lcom/google/android/gms/location/places/personalized/PlaceUserData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/personalized/c;


# instance fields
.field final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/gms/location/places/personalized/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->CREATOR:Lcom/google/android/gms/location/places/personalized/c;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->a:I

    .line 88
    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->b:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->c:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->d:Ljava/util/List;

    .line 91
    iput-object p5, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->e:Ljava/util/List;

    .line 92
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/location/places/personalized/PlaceUserData;
    .locals 6

    .prologue
    .line 72
    new-instance v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/personalized/PlaceUserData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return v3

    .line 165
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/UserDataType;

    .line 166
    sget-object v5, Lcom/google/android/gms/location/places/UserDataType;->a:Lcom/google/android/gms/location/places/UserDataType;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/location/places/UserDataType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_2
    or-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    .line 168
    :cond_2
    sget-object v5, Lcom/google/android/gms/location/places/UserDataType;->c:Lcom/google/android/gms/location/places/UserDataType;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/location/places/UserDataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_3
    or-int/2addr v0, v1

    :goto_4
    move v1, v0

    .line 171
    goto :goto_1

    :cond_3
    move v0, v2

    .line 169
    goto :goto_3

    :cond_4
    move v3, v1

    .line 172
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_4
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->e:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->d:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->CREATOR:Lcom/google/android/gms/location/places/personalized/c;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    if-ne p0, p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    if-nez v2, :cond_2

    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    .line 109
    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->d:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->e:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->CREATOR:Lcom/google/android/gms/location/places/personalized/c;

    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/personalized/c;->a(Lcom/google/android/gms/location/places/personalized/PlaceUserData;Landroid/os/Parcel;)V

    .line 183
    return-void
.end method
