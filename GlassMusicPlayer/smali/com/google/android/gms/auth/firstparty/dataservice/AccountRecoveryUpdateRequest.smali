.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/t;


# instance fields
.field final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/t;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/t;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->f:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->g:Z

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->h:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/t;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;Landroid/os/Parcel;I)V

    return-void
.end method
