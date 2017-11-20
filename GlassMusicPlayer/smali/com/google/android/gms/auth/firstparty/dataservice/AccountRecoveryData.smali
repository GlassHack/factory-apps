.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/p;


# instance fields
.field public final b:I

.field public final c:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/p;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->a:Lcom/google/android/gms/auth/firstparty/dataservice/p;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->c:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->h:Ljava/lang/String;

    if-nez p8, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->i:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->k:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/p;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;Landroid/os/Parcel;I)V

    return-void
.end method
