.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/k;


# instance fields
.field final a:I

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/k;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;->a:I

    .line 25
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;->a:I

    .line 32
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;->b:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/k;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;Landroid/os/Parcel;)V

    .line 42
    return-void
.end method
