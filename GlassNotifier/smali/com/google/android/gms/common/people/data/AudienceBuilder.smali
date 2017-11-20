.class public final Lcom/google/android/gms/common/people/data/AudienceBuilder;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_AUDIENCE:Lcom/google/android/gms/common/people/data/Audience;


# instance fields
.field private Xm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation
.end field

.field private Xn:I

.field private Xp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/people/data/AudienceBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->build()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->EMPTY_AUDIENCE:Lcom/google/android/gms/common/people/data/Audience;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->Xm:Ljava/util/List;

    iput v1, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->Xn:I

    iput-boolean v1, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->Xp:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/people/data/Audience;)V
    .locals 1
    .param p1, "audience"    # Lcom/google/android/gms/common/people/data/Audience;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Audience must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/people/data/Audience;->getAudienceMemberList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->Xm:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/common/people/data/Audience;->getDomainRestricted()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->Xn:I

    invoke-virtual {p1}, Lcom/google/android/gms/common/people/data/Audience;->isReadOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->Xp:Z

    return-void
.end method

.method private ds(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown domain restriction setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/google/android/gms/common/people/data/Audience;
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/people/data/Audience;

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->Xm:Ljava/util/List;

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->Xn:I

    iget-boolean v3, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->Xp:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/people/data/Audience;-><init>(Ljava/util/List;IZ)V

    return-object v0
.end method

.method public setAudienceMembers(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/AudienceBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/people/data/AudienceBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "audienceMembers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/common/people/data/AudienceMember;>;"
    new-instance v1, Ljava/util/ArrayList;

    const-string v0, "Audience members must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->Xm:Ljava/util/List;

    return-object p0
.end method

.method public setDomainRestricted(I)Lcom/google/android/gms/common/people/data/AudienceBuilder;
    .locals 1
    .param p1, "domainRestricted"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/people/data/AudienceBuilder;->ds(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->Xn:I

    return-object p0
.end method

.method public setReadOnly(Z)Lcom/google/android/gms/common/people/data/AudienceBuilder;
    .locals 0
    .param p1, "readOnly"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/common/people/data/AudienceBuilder;->Xp:Z

    return-object p0
.end method
