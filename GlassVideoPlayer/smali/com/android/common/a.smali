.class public final Lcom/android/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    .line 73
    return-void
.end method

.method private a(Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 201
    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 205
    :goto_0
    return-wide p2

    :cond_0
    move-wide p2, v0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_errorCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 305
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 323
    return-void
.end method

.method private static f()J
    .locals 2

    .prologue
    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/android/common/b;)J
    .locals 13

    .prologue
    const/4 v5, 0x0

    const-wide v0, 0x7fffffffffffffffL

    .line 136
    iget-object v2, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "OperationScheduler_enabledState"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 137
    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-wide v0

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "OperationScheduler_permanentError"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 140
    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "OperationScheduler_errorCount"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 147
    invoke-static {}, Lcom/android/common/a;->f()J

    move-result-wide v3

    .line 148
    const-string v5, "OperationScheduler_lastSuccessTimeMillis"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/common/a;->a(Ljava/lang/String;J)J

    move-result-wide v5

    .line 149
    const-string v7, "OperationScheduler_lastErrorTimeMillis"

    invoke-direct {p0, v7, v3, v4}, Lcom/android/common/a;->a(Ljava/lang/String;J)J

    move-result-wide v7

    .line 150
    iget-object v9, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    const-string v10, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v9, v10, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 151
    const-string v9, "OperationScheduler_moratoriumSetTimeMillis"

    invoke-direct {p0, v9, v3, v4}, Lcom/android/common/a;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 152
    const-string v9, "OperationScheduler_moratoriumTimeMillis"

    iget-wide v10, p1, Lcom/android/common/b;->c:J

    add-long/2addr v3, v10

    invoke-direct {p0, v9, v3, v4}, Lcom/android/common/a;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 156
    iget-wide v9, p1, Lcom/android/common/b;->e:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 157
    iget-wide v9, p1, Lcom/android/common/b;->e:J

    add-long/2addr v9, v5

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 160
    :cond_2
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 161
    iget-wide v3, p1, Lcom/android/common/b;->d:J

    add-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 162
    if-lez v2, :cond_0

    .line 163
    iget-wide v3, p1, Lcom/android/common/b;->a:J

    add-long/2addr v3, v7

    iget-wide v5, p1, Lcom/android/common/b;->b:J

    int-to-long v7, v2

    mul-long/2addr v5, v7

    add-long v2, v3, v5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(J)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 219
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/android/common/a;->d()V

    .line 275
    invoke-direct {p0}, Lcom/android/common/a;->e()V

    .line 276
    iget-object v0, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_errorCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_lastErrorTimeMillis"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    invoke-static {}, Lcom/android/common/a;->f()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 282
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    const-string v1, "OperationScheduler_lastErrorTimeMillis"

    invoke-static {}, Lcom/android/common/a;->f()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 292
    const-string v1, "OperationScheduler_errorCount"

    iget-object v2, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "OperationScheduler_errorCount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-static {v0}, Lcom/android/common/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 295
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "[OperationScheduler:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    const-string v3, "OperationScheduler_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    const-string v3, "TimeMillis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 334
    iget-object v4, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 335
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OperationScheduler_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%Y-%m-%d/%H:%M:%S"

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 338
    :cond_1
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OperationScheduler_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/common/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 343
    :cond_2
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
