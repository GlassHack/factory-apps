.class public Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CHANNEL_BLUETOOTH_CLASSIC:Ljava/lang/String; = "bluetooth_classic"

.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/d;

.field public static final TYPE_UNLOCK:Ljava/lang/String; = "unlock"


# instance fields
.field final Dr:Ljava/lang/String;

.field final GU:I

.field final IS:Ljava/lang/String;

.field final IT:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

.field IU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;"
        }
    .end annotation
.end field

.field final IV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;"
        }
    .end annotation
.end field

.field IW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final IX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final vT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/d;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "version"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "license"    # Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "requesterAccessesCache":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;>;"
    .local p7, "allowedChannelsCache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p6}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, p7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;Ljava/util/Map;Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;Ljava/util/Map;Ljava/util/Set;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "license"    # Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "requesterAccesses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;>;"
    .local p7, "allowedChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->GU:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/u;->bt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Dr:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/u;->bt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IS:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/u;->bt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->vT:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IT:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    if-nez p6, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IV:Ljava/util/Map;

    if-nez p7, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IX:Ljava/util/Set;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method private static e(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public addAllowedChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "allowedChannel"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IX:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRequesterAccess(Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;)V
    .locals 2
    .param p1, "requesterAccess"    # Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IV:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IS:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IS:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Dr:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Dr:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->vT:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->vT:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IT:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IT:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IX:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IX:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IV:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IV:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IS:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowedChannels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IX:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Dr:Ljava/lang/String;

    return-object v0
.end method

.method public getLicense()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IT:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    return-object v0
.end method

.method public getRequesterAccessById(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IV:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    return-object v0
.end method

.method public getRequesterAccesses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IV:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequesterAccesses(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->vT:Ljava/lang/String;

    return-object v0
.end method

.method public hasAllowedChannel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "allowedChannel"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IX:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->Dr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x20f

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IS:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->vT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IX:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IT:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IV:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public removeAllowedChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "allowedChannel"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IX:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRequesterAccess(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IV:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IV:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IU:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IX:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->IW:Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/proximity/data/d;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;Landroid/os/Parcel;I)V

    return-void
.end method
