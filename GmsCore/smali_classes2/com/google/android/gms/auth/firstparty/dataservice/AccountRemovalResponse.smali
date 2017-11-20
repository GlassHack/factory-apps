.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/l;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/l;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/l;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;->a:I

    .line 30
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;->a:I

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;->b:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/l;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;Landroid/os/Parcel;)V

    .line 45
    return-void
.end method
