.class public Lcom/google/android/gms/auth/firstparty/shared/PlusProfileCreationResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/i;


# instance fields
.field final a:I

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/i;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/PlusProfileCreationResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/i;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/PlusProfileCreationResponse;->a:I

    .line 29
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/PlusProfileCreationResponse;->b:Ljava/lang/String;

    .line 30
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
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/shared/i;->a(Lcom/google/android/gms/auth/firstparty/shared/PlusProfileCreationResponse;Landroid/os/Parcel;)V

    .line 43
    return-void
.end method
