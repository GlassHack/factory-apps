.class public Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/j;


# instance fields
.field description:Ljava/lang/String;

.field public friendPickerData:Lcom/google/android/gms/auth/firstparty/shared/FACLData;

.field pO:Ljava/lang/String;

.field qT:Ljava/lang/String;

.field sb:Ljava/lang/String;

.field sc:Ljava/lang/String;

.field sd:Ljava/util/List;
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

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/j;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/j;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/auth/firstparty/shared/FACLData;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;
    .param p4, "iconBase64"    # Ljava/lang/String;
    .param p5, "paclPickerDataBase64"    # Ljava/lang/String;
    .param p6, "service"    # Ljava/lang/String;
    .param p8, "friendPickerData"    # Lcom/google/android/gms/auth/firstparty/shared/FACLData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/auth/firstparty/shared/FACLData;",
            ")V"
        }
    .end annotation

    .prologue
    .local p7, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->pO:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->sb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->sc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->qT:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->sd:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->friendPickerData:Lcom/google/android/gms/auth/firstparty/shared/FACLData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/FACLData;Ljava/util/List;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;
    .param p4, "iconBase64"    # Ljava/lang/String;
    .param p5, "paclPickerDataBase64"    # Ljava/lang/String;
    .param p6, "faclData"    # Lcom/google/android/gms/auth/firstparty/shared/FACLData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/shared/FACLData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->version:I

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->qT:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->pO:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->sb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->sc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->friendPickerData:Lcom/google/android/gms/auth/firstparty/shared/FACLData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->sd:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->sd:Ljava/util/List;

    invoke-interface {v0, p7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->pO:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendPickerData()Lcom/google/android/gms/auth/firstparty/shared/FACLData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->friendPickerData:Lcom/google/android/gms/auth/firstparty/shared/FACLData;

    return-object v0
.end method

.method public getIconBase64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->sb:Ljava/lang/String;

    return-object v0
.end method

.method public getPaclPickerBase64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->sc:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->qT:Ljava/lang/String;

    return-object v0
.end method

.method public getUnmodifiableWarnings()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->sd:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/j;->a(Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;Landroid/os/Parcel;I)V

    return-void
.end method
