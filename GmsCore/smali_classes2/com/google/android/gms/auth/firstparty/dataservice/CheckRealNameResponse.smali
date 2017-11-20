.class public Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/o;


# instance fields
.field final a:I

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/o;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/o;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;->a:I

    .line 29
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;->a:I

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;->b:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
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
    .line 42
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/o;->a(Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;Landroid/os/Parcel;)V

    .line 43
    return-void
.end method
