.class public Lcom/google/android/gms/auth/firstparty/shared/PlusProfileCreationResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/shared/i;


# instance fields
.field final b:I

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/i;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/PlusProfileCreationResponse;->a:Lcom/google/android/gms/auth/firstparty/shared/i;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/PlusProfileCreationResponse;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/PlusProfileCreationResponse;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/i;->a(Lcom/google/android/gms/auth/firstparty/shared/PlusProfileCreationResponse;Landroid/os/Parcel;I)V

    return-void
.end method
