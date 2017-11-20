.class public final Lcom/google/android/gms/common/people/data/Audiences;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMember(Lcom/google/android/gms/common/people/data/Audience;Lcom/google/android/gms/common/people/data/AudienceMember;)Lcom/google/android/gms/common/people/data/Audience;
    .locals 2
    .param p0, "audience"    # Lcom/google/android/gms/common/people/data/Audience;
    .param p1, "audienceMember"    # Lcom/google/android/gms/common/people/data/AudienceMember;

    .prologue
    const-string v0, "Audience must not be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Audience member must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/Audience;->getAudienceMemberList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/common/people/data/AudienceBuilder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;-><init>(Lcom/google/android/gms/common/people/data/Audience;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->setAudienceMembers(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/AudienceBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->build()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    return-object v0
.end method

.method public static addMemberList(Lcom/google/android/gms/common/people/data/Audience;Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/Audience;
    .locals 2
    .param p0, "audience"    # Lcom/google/android/gms/common/people/data/Audience;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/people/data/Audience;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/people/data/Audience;"
        }
    .end annotation

    .prologue
    .local p1, "newMembers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/common/people/data/AudienceMember;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/Audience;->getAudienceMemberList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/google/android/gms/common/people/data/AudienceBuilder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;-><init>(Lcom/google/android/gms/common/people/data/Audience;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->setAudienceMembers(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/AudienceBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->build()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    return-object v0
.end method

.method public static fromAudienceSelectionIntent(Landroid/content/Intent;Lcom/google/android/gms/common/people/data/Audience;)Lcom/google/android/gms/common/people/data/Audience;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "baseAudience"    # Lcom/google/android/gms/common/people/data/Audience;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/people/data/AudienceBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->build()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object p1

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getSelectedAudienceMembers(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/people/data/AudienceBuilder;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/people/data/AudienceBuilder;-><init>(Lcom/google/android/gms/common/people/data/Audience;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->setAudienceMembers(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/AudienceBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->build()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    return-object v0
.end method

.method public static hasMember(Lcom/google/android/gms/common/people/data/Audience;Lcom/google/android/gms/common/people/data/AudienceMember;)Z
    .locals 1
    .param p0, "audience"    # Lcom/google/android/gms/common/people/data/Audience;
    .param p1, "audienceMember"    # Lcom/google/android/gms/common/people/data/AudienceMember;

    .prologue
    const-string v0, "Audience must not be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Audience member must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/Audience;->getAudienceMemberList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty(Lcom/google/android/gms/common/people/data/Audience;)Z
    .locals 1
    .param p0, "audience"    # Lcom/google/android/gms/common/people/data/Audience;

    .prologue
    const-string v0, "Audience must not be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/Audience;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/Audience;->getAudienceMemberList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeMember(Lcom/google/android/gms/common/people/data/Audience;Lcom/google/android/gms/common/people/data/AudienceMember;)Lcom/google/android/gms/common/people/data/Audience;
    .locals 2
    .param p0, "audience"    # Lcom/google/android/gms/common/people/data/Audience;
    .param p1, "audienceMember"    # Lcom/google/android/gms/common/people/data/AudienceMember;

    .prologue
    const-string v0, "Audience must not be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Audience member must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/Audience;->getAudienceMemberList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/common/people/data/AudienceBuilder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;-><init>(Lcom/google/android/gms/common/people/data/Audience;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->setAudienceMembers(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/AudienceBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->build()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    return-object v0
.end method
