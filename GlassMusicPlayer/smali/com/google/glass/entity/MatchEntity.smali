.class public abstract Lcom/google/glass/entity/MatchEntity;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 41
    iput-object p1, p0, Lcom/google/glass/entity/MatchEntity;->context:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public addPhoneNumber(Ljava/lang/String;)Lcom/google/glass/entity/MatchEntity;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Phone number was null or empty, not setting."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :goto_0
    return-object p0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPhoneNumber()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .line 122
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    goto :goto_0
.end method

.method public byPartialEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 2

    .prologue
    .line 151
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 152
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/entity/MatchEntity;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 46
    iget-object v1, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 48
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 49
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Searching for entity via phone numbers."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 52
    iget-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_0
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 57
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lcom/google/glass/entity/EntityHelper;->queryByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    sget-object v1, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Entity found via phone number."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :goto_0
    return-object v0

    .line 65
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/google/glass/entity/EntityHelper;->queryBySecondaryPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    sget-object v1, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Entity found via secondary phone number."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Searching for entity via id."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/entity/EntityHelper;->queryByEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    sget-object v1, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Entity found via id."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_5
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Searching for entity via email address."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/entity/EntityHelper;->queryByEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_6

    .line 86
    sget-object v1, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Entity found via email address."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/entity/MatchEntity;->doInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onEntityMatched(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
.end method

.method public abstract onNoMatchFound()V
.end method

.method protected onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    if-nez p1, :cond_0

    .line 96
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No entity found, sending to onNoMatchFound()."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/glass/entity/MatchEntity;->onNoMatchFound()V

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Entity found, sending to onEntityMatched()."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/MatchEntity;->onEntityMatched(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p0, p1}, Lcom/google/glass/entity/MatchEntity;->onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/google/glass/entity/MatchEntity;
    .locals 3

    .prologue
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Email address was null or empty, not setting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :goto_0
    return-object p0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto :goto_0
.end method
