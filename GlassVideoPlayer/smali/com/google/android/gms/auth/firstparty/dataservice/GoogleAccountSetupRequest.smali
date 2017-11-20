.class public Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/ae;


# instance fields
.field final b:I

.field c:Landroid/os/Bundle;

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Z

.field l:Z

.field m:Z

.field n:Ljava/lang/String;

.field o:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field p:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

.field q:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ae;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ae;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/ae;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->b:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->c:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->c:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->d:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->e:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->f:Z

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->i:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->j:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->k:Z

    iput-boolean p11, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->l:Z

    iput-boolean p12, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->m:Z

    iput-object p13, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->n:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->o:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->p:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->q:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->r:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->s:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ae;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;Landroid/os/Parcel;I)V

    return-void
.end method
