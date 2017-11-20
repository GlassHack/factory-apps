.class public Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/shared/a;


# instance fields
.field final b:I

.field c:Z

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a:Lcom/google/android/gms/auth/firstparty/shared/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->b:I

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->b:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->i:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/a;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Landroid/os/Parcel;I)V

    return-void
.end method
