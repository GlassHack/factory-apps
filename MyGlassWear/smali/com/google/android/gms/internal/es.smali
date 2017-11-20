.class public Lcom/google/android/gms/internal/es;
.super Lcom/google/android/gms/common/data/b;

# interfaces
.implements Lcom/google/android/gms/people/model/ContactGaiaId;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public getContactInfo()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/es;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaId()Ljava/lang/String;
    .locals 1

    const-string v0, "gaia_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/es;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/es;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
