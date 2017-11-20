.class public Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/actions/ActionDecisionMakerLink;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private next:Lcom/google/glass/voice/actions/ActionDecisionMakerLink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private getEmail(Lcom/google/b/a/dg;Lcom/google/b/a/dn;)Ljava/util/List;
    .locals 3

    .prologue
    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v0, p1, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    if-eqz v0, :cond_2

    .line 171
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 172
    if-eqz p2, :cond_0

    iget-object v2, p1, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/google/b/a/dh;->a:Lcom/google/b/a/dn;

    .line 173
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    :cond_0
    iget-object v2, p1, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_2
    return-object v1
.end method

.method private static getLabel(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 62
    const-string v0, "Other"

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    const-string v0, "Home"

    goto :goto_0

    .line 56
    :pswitch_1
    const-string v0, "Work"

    goto :goto_0

    .line 58
    :pswitch_2
    const-string v0, "Mobile"

    goto :goto_0

    .line 60
    :pswitch_3
    const-string v0, "Main"

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getPhoneNumber(Lcom/google/b/a/dg;Lcom/google/b/a/dn;)Ljava/util/List;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 151
    sget-object v1, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Getting phone number"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    iget-object v2, p1, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    if-eqz v2, :cond_2

    .line 154
    :goto_0
    iget-object v2, p1, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 155
    if-eqz p2, :cond_0

    iget-object v2, p1, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/google/b/a/dk;->a:Lcom/google/b/a/dn;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    iget-object v2, p1, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_2
    return-object v1
.end method

.method private hasAtleastOneContact(Lcom/google/b/a/dm;)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->hasContactInformationAndQuery(Lcom/google/b/a/dm;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    iget-object v4, p1, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    .line 227
    iget-object v5, p1, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    array-length v6, v5

    move v3, v0

    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    .line 228
    iget-object v8, v4, Lcom/google/b/a/dl;->c:[I

    array-length v9, v8

    move v2, v0

    :goto_2
    if-ge v2, v9, :cond_4

    aget v10, v8, v2

    .line 229
    sget-object v11, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->PHONE_NUMBER:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    invoke-static {v11}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->access$000(Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;)I

    move-result v11

    if-ne v10, v11, :cond_2

    iget-object v11, v4, Lcom/google/b/a/dl;->d:Lcom/google/b/a/dn;

    .line 230
    invoke-direct {p0, v7, v11}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->getPhoneNumber(Lcom/google/b/a/dg;Lcom/google/b/a/dn;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    move v0, v1

    .line 231
    goto :goto_0

    .line 232
    :cond_2
    sget-object v11, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->EMAIL_ADDRESS:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    invoke-static {v11}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->access$000(Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;)I

    move-result v11

    if-ne v10, v11, :cond_3

    iget-object v10, v4, Lcom/google/b/a/dl;->d:Lcom/google/b/a/dn;

    .line 233
    invoke-direct {p0, v7, v10}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->getEmail(Lcom/google/b/a/dg;Lcom/google/b/a/dn;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    move v0, v1

    .line 234
    goto :goto_0

    .line 228
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 227
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1
.end method

.method private hasContactInformationAndQuery(Lcom/google/b/a/dm;)Z
    .locals 1

    .prologue
    .line 214
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMultipleContacts(Lcom/google/b/a/dm;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, p1}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->hasContactInformationAndQuery(Lcom/google/b/a/dm;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMultipleEndpoints(Lcom/google/b/a/dm;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->hasAtleastOneContact(Lcom/google/b/a/dm;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    iget-object v3, p1, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    .line 196
    iget-object v2, p1, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    aget-object v4, v2, v1

    .line 197
    iget-object v5, v3, Lcom/google/b/a/dl;->c:[I

    array-length v6, v5

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_3

    aget v7, v5, v2

    .line 198
    sget-object v8, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->PHONE_NUMBER:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    invoke-static {v8}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->access$000(Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;)I

    move-result v8

    if-ne v7, v8, :cond_0

    iget-object v8, v3, Lcom/google/b/a/dl;->d:Lcom/google/b/a/dn;

    .line 199
    invoke-direct {p0, v4, v8}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->getPhoneNumber(Lcom/google/b/a/dg;Lcom/google/b/a/dn;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v0, :cond_1

    :cond_0
    sget-object v8, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->EMAIL_ADDRESS:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    .line 200
    invoke-static {v8}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->access$000(Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;)I

    move-result v8

    if-ne v7, v8, :cond_2

    iget-object v7, v3, Lcom/google/b/a/dl;->d:Lcom/google/b/a/dn;

    .line 201
    invoke-direct {p0, v4, v7}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->getEmail(Lcom/google/b/a/dg;Lcom/google/b/a/dn;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v0, :cond_2

    .line 206
    :cond_1
    :goto_1
    return v0

    .line 197
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 206
    goto :goto_1
.end method

.method private static isCommunicationArgument(Lcom/google/b/a/gp;I)Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/b/a/gp;->a:[Lcom/google/b/a/ga;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/b/a/gp;->a:[Lcom/google/b/a/ga;

    array-length v0, v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/b/a/gp;->a:[Lcom/google/b/a/ga;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/b/a/ga;->b:Lcom/google/b/a/ge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeLaunchDecision(Lcom/google/b/a/gs;Lcom/google/b/a/dm;Lcom/google/b/a/gq;)Lcom/google/glass/voice/actions/ActionDecision;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 118
    iget-object v1, p2, Lcom/google/b/a/dm;->a:[Lcom/google/b/a/dg;

    aget-object v2, v1, v5

    .line 122
    iget-object v1, p2, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    iget-object v1, v1, Lcom/google/b/a/dl;->c:[I

    aget v1, v1, v5

    sget-object v3, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->PHONE_NUMBER:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    invoke-static {v3}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->access$000(Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 123
    iget-object v0, p2, Lcom/google/b/a/dm;->b:Lcom/google/b/a/dl;

    iget-object v0, v0, Lcom/google/b/a/dl;->d:Lcom/google/b/a/dn;

    .line 124
    invoke-direct {p0, v2, v0}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->getPhoneNumber(Lcom/google/b/a/dg;Lcom/google/b/a/dn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/dk;

    .line 125
    invoke-virtual {v0}, Lcom/google/b/a/dk;->b()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v0, v0, Lcom/google/b/a/dk;->a:Lcom/google/b/a/dn;

    invoke-virtual {v0}, Lcom/google/b/a/dn;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->getLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 129
    const-string v4, "com.google.glass.search.actions.CONTACT_ADDRESS"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v1, p1, Lcom/google/b/a/gs;->a:[Lcom/google/b/a/gj;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/google/b/a/gj;->b:Lcom/google/b/a/fy;

    .line 132
    invoke-virtual {v1}, Lcom/google/b/a/fy;->a()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {v2}, Lcom/google/b/a/dg;->b()Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v2, Lcom/google/glass/voice/actions/ActionDecision$Builder;

    invoke-direct {v2}, Lcom/google/glass/voice/actions/ActionDecision$Builder;-><init>()V

    .line 136
    invoke-virtual {v2, v6}, Lcom/google/glass/voice/actions/ActionDecision$Builder;->autoExecute(Z)Lcom/google/glass/voice/actions/ActionDecision$Builder;

    move-result-object v2

    .line 137
    invoke-virtual {v2, v3}, Lcom/google/glass/voice/actions/ActionDecision$Builder;->intent(Landroid/content/Intent;)Lcom/google/glass/voice/actions/ActionDecision$Builder;

    move-result-object v2

    iget-object v3, p3, Lcom/google/b/a/gq;->a:Lcom/google/b/a/gc;

    new-array v4, v7, [Ljava/lang/String;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    .line 138
    invoke-static {v3, v4}, Lcom/google/glass/voice/actions/ModularActionHandler;->transformArgument(Lcom/google/b/a/gc;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/actions/ActionDecision$Builder;->displayPrompt(Ljava/lang/String;)Lcom/google/glass/voice/actions/ActionDecision$Builder;

    move-result-object v2

    iget-object v3, p3, Lcom/google/b/a/gq;->b:Lcom/google/b/a/gc;

    new-array v4, v7, [Ljava/lang/String;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    .line 140
    invoke-static {v3, v4}, Lcom/google/glass/voice/actions/ModularActionHandler;->transformArgument(Lcom/google/b/a/gc;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/glass/voice/actions/ActionDecision$Builder;->vocalizedPrompt(Ljava/lang/String;)Lcom/google/glass/voice/actions/ActionDecision$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/google/glass/voice/actions/ActionDecision$Builder;->build()Lcom/google/glass/voice/actions/ActionDecision;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public makeActionDecision(Lcom/google/b/a/gp;)Lcom/google/glass/voice/actions/ActionDecision;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v0, p1, Lcom/google/b/a/gp;->b:[Lcom/google/b/a/gs;

    aget-object v0, v0, v4

    .line 70
    iget-object v1, v0, Lcom/google/b/a/gs;->h:[I

    if-nez v1, :cond_0

    .line 71
    sget-object v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "There is no required argument id!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->next:Lcom/google/glass/voice/actions/ActionDecisionMakerLink;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/actions/ActionDecisionMakerLink;->makeActionDecision(Lcom/google/b/a/gp;)Lcom/google/glass/voice/actions/ActionDecision;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget-object v1, v0, Lcom/google/b/a/gs;->h:[I

    aget v1, v1, v4

    add-int/lit8 v1, v1, -0x1

    .line 78
    iget-object v2, p1, Lcom/google/b/a/gp;->c:Lcom/google/b/a/fx;

    iget-object v2, v2, Lcom/google/b/a/fx;->a:[Lcom/google/b/a/gb;

    aget-object v1, v2, v1

    .line 79
    invoke-virtual {v1}, Lcom/google/b/a/gb;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 80
    invoke-static {p1, v1}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->isCommunicationArgument(Lcom/google/b/a/gp;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    iget-object v2, p1, Lcom/google/b/a/gp;->a:[Lcom/google/b/a/ga;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/google/b/a/ga;->b:Lcom/google/b/a/ge;

    iget-object v1, v1, Lcom/google/b/a/ge;->a:Lcom/google/b/a/dm;

    .line 83
    invoke-direct {p0, v1}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->hasMultipleContacts(Lcom/google/b/a/dm;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    sget-object v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "People disambiguation."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_1
    :goto_1
    sget-object v0, Lcom/google/glass/voice/actions/ActionDecision;->NO_OP_DECISON:Lcom/google/glass/voice/actions/ActionDecision;

    goto :goto_0

    .line 86
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->hasMultipleEndpoints(Lcom/google/b/a/dm;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    sget-object v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Endpoint disambiguation."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 89
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->hasAtleastOneContact(Lcom/google/b/a/dm;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    sget-object v2, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Making a launch decision"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v2, p1, Lcom/google/b/a/gp;->c:Lcom/google/b/a/fx;

    iget-object v2, v2, Lcom/google/b/a/fx;->c:Lcom/google/b/a/gq;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->makeLaunchDecision(Lcom/google/b/a/gs;Lcom/google/b/a/dm;Lcom/google/b/a/gq;)Lcom/google/glass/voice/actions/ActionDecision;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_4
    sget-object v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Get Contact details."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->next:Lcom/google/glass/voice/actions/ActionDecisionMakerLink;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->next:Lcom/google/glass/voice/actions/ActionDecisionMakerLink;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/actions/ActionDecisionMakerLink;->makeActionDecision(Lcom/google/b/a/gp;)Lcom/google/glass/voice/actions/ActionDecision;

    move-result-object v0

    goto :goto_0
.end method

.method public setNext(Lcom/google/glass/voice/actions/ActionDecisionMakerLink;)Lcom/google/glass/voice/actions/ActionDecisionMakerLink;
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->next:Lcom/google/glass/voice/actions/ActionDecisionMakerLink;

    .line 244
    return-object p0
.end method
