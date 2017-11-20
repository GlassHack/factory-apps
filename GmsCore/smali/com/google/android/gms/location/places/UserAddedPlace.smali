.class public Lcom/google/android/gms/location/places/UserAddedPlace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/maps/model/LatLng;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/google/android/gms/location/places/an;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/an;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/UserAddedPlace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->a:I

    .line 110
    iput-object p2, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->b:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->c:Lcom/google/android/gms/maps/model/LatLng;

    .line 112
    iput-object p4, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->d:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->e:Ljava/util/List;

    .line 114
    iput-object p6, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->f:Ljava/lang/String;

    .line 115
    iput-object p7, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->g:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public static a()Lcom/google/android/gms/location/places/am;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/gms/location/places/am;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/places/am;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->c:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->e:Ljava/util/List;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->g:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 130
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/an;->a(Lcom/google/android/gms/location/places/UserAddedPlace;Landroid/os/Parcel;I)V

    .line 131
    return-void
.end method
