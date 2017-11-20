.class public Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/q;


# instance fields
.field accountName:Ljava/lang/String;

.field public firstName:Ljava/lang/String;

.field public lastName:Ljava/lang/String;

.field qh:Z

.field public services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/q;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/q;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "isBrowserFlowRequired"    # Z
    .param p5, "firstName"    # Ljava/lang/String;
    .param p6, "lastName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->accountName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->qh:Z

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->services:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->firstName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->lastName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "isBrowserFlowRequired"    # Z
    .param p4, "firstName"    # Ljava/lang/String;
    .param p5, "lastName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->version:I

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->accountName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->qh:Z

    if-nez p3, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->services:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->firstName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->lastName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->services:Ljava/util/List;

    return-object v0
.end method

.method public isBrowserFlowRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->qh:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/q;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;Landroid/os/Parcel;I)V

    return-void
.end method
