.class public Lcom/google/android/gms/location/places/AutocompleteFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/location/places/b;


# instance fields
.field final b:I

.field private final c:Z

.field private final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->a:Lcom/google/android/gms/location/places/b;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->b:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->c:Z

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->d:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->a:Lcom/google/android/gms/location/places/b;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->a:Lcom/google/android/gms/location/places/b;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/b;->a(Lcom/google/android/gms/location/places/AutocompleteFilter;Landroid/os/Parcel;I)V

    return-void
.end method
