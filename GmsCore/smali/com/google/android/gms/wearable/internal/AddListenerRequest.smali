.class public Lcom/google/android/gms/wearable/internal/AddListenerRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field public final b:Lcom/google/android/gms/wearable/internal/af;

.field public final c:[Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/gms/wearable/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;[Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->a:I

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/wearable/internal/ag;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->b:Lcom/google/android/gms/wearable/internal/af;

    .line 44
    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->c:[Landroid/content/IntentFilter;

    .line 45
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->b:Lcom/google/android/gms/wearable/internal/af;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/wearable/internal/bg;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->a:I

    .line 49
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->b:Lcom/google/android/gms/wearable/internal/af;

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/bg;->a()[Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->c:[Landroid/content/IntentFilter;

    .line 51
    return-void
.end method


# virtual methods
.method final a()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->b:Lcom/google/android/gms/wearable/internal/af;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->b:Lcom/google/android/gms/wearable/internal/af;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/internal/af;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/b;->a(Lcom/google/android/gms/wearable/internal/AddListenerRequest;Landroid/os/Parcel;I)V

    .line 61
    return-void
.end method
