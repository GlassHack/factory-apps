.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/d;


# instance fields
.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field g:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->b:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->g:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/d;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;Landroid/os/Parcel;I)V

    return-void
.end method
