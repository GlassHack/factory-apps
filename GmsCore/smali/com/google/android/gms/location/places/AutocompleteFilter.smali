.class public Lcom/google/android/gms/location/places/AutocompleteFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/b;


# instance fields
.field final a:I

.field private final b:Z

.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/gms/location/places/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/b;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->a:I

    .line 109
    iput-boolean p2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->b:Z

    .line 110
    iput-object p3, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->c:Ljava/util/List;

    .line 111
    return-void
.end method

.method private constructor <init>(ZLjava/util/List;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/location/places/AutocompleteFilter;-><init>(IZLjava/util/List;)V

    .line 97
    return-void
.end method

.method public synthetic constructor <init>(ZLjava/util/List;B)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/AutocompleteFilter;-><init>(ZLjava/util/List;)V

    return-void
.end method

.method public static a()Lcom/google/android/gms/location/places/a;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/gms/location/places/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/places/a;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->b:Z

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->c:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/b;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/b;

    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/b;->a(Lcom/google/android/gms/location/places/AutocompleteFilter;Landroid/os/Parcel;)V

    .line 140
    return-void
.end method
