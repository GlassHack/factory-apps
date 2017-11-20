.class public Lcom/android/common/OperationScheduler;
.super Ljava/lang/Object;
.source "OperationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/OperationScheduler$Options;
    }
.end annotation


# instance fields
.field private final mStorage:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "storage"    # Landroid/content/SharedPreferences;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    .line 84
    return-void
.end method

.method private getTimeBefore(Ljava/lang/String;J)J
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "max"    # J

    .prologue
    .line 228
    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0x0

    invoke-interface {v2, p1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 229
    .local v0, "time":J
    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    .line 230
    move-wide v0, p2

    .line 231
    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 233
    :cond_0
    return-wide v0
.end method


# virtual methods
.method protected currentTimeMillis()J
    .locals 2

    .prologue
    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J
    .locals 30
    .param p1, "options"    # Lcom/android/common/OperationScheduler$Options;

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "OperationScheduler_enabledState"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 152
    .local v6, "enabledState":Z
    if-nez v6, :cond_1

    const-wide v20, 0x7fffffffffffffffL

    .line 194
    :cond_0
    :goto_0
    return-wide v20

    .line 154
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "OperationScheduler_permanentError"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 155
    .local v18, "permanentError":Z
    if-eqz v18, :cond_2

    const-wide v20, 0x7fffffffffffffffL

    goto :goto_0

    .line 161
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "OperationScheduler_errorCount"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 162
    .local v7, "errorCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v16

    .line 163
    .local v16, "now":J
    const-string v24, "OperationScheduler_lastSuccessTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v10

    .line 164
    .local v10, "lastSuccessTimeMillis":J
    const-string v24, "OperationScheduler_lastErrorTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v8

    .line 165
    .local v8, "lastErrorTimeMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "OperationScheduler_triggerTimeMillis"

    const-wide v26, 0x7fffffffffffffffL

    invoke-interface/range {v24 .. v27}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 166
    .local v22, "triggerTimeMillis":J
    const-string v24, "OperationScheduler_moratoriumSetTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v12

    .line 167
    .local v12, "moratoriumSetMillis":J
    const-string v24, "OperationScheduler_moratoriumTimeMillis"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    move-wide/from16 v25, v0

    add-long v25, v25, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v14

    .line 170
    .local v14, "moratoriumTimeMillis":J
    move-wide/from16 v20, v22

    .line 171
    .local v20, "time":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_3

    .line 172
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    move-wide/from16 v24, v0

    add-long v24, v24, v10

    move-wide/from16 v0, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 175
    :cond_3
    move-wide/from16 v0, v20

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 176
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    move-wide/from16 v24, v0

    add-long v24, v24, v10

    move-wide/from16 v0, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 177
    if-lez v7, :cond_0

    .line 178
    add-int/lit8 v19, v7, -0x1

    .line 181
    .local v19, "shift":I
    const/16 v24, 0x1e

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    const/16 v19, 0x1e

    .line 182
    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    move-wide/from16 v26, v0

    int-to-long v0, v7

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    add-long v24, v24, v26

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/common/OperationScheduler$Options;->backoffExponentialMillis:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    shl-long v26, v26, v19

    add-long v4, v24, v26

    .line 188
    .local v4, "backoff":J
    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-lez v24, :cond_5

    cmp-long v24, v4, v14

    if-lez v24, :cond_5

    .line 189
    move-wide v4, v14

    .line 192
    :cond_5
    add-long v24, v8, v4

    move-wide/from16 v0, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    goto/16 :goto_0
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 303
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->resetPermanentError()V

    .line 304
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

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

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 310
    return-void
.end method

.method public onTransientError()V
    .locals 5

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 319
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "OperationScheduler_lastErrorTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 320
    const-string v1, "OperationScheduler_errorCount"

    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v3, "OperationScheduler_errorCount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 322
    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 323
    return-void
.end method

.method public resetPermanentError()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 351
    return-void
.end method

.method public resetTransientError()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_errorCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 333
    return-void
.end method

.method public setEnabledState(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_enabledState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 295
    return-void
.end method

.method public setMoratoriumTimeHttp(Ljava/lang/String;)Z
    .locals 9
    .param p1, "retryAfter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 272
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v1, v5, v7

    .line 273
    .local v1, "ms":J
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v1

    invoke-virtual {p0, v5, v6}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v1    # "ms":J
    :goto_0
    return v4

    .line 275
    :catch_0
    move-exception v3

    .line 277
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 279
    :catch_1
    move-exception v0

    .line 280
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setMoratoriumTimeMillis(J)V
    .locals 4
    .param p1, "millis"    # J

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_moratoriumTimeMillis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_moratoriumSetTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 260
    return-void
.end method

.method public setTriggerTimeMillis(J)V
    .locals 2
    .param p1, "millis"    # J

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 247
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[OperationScheduler:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .local v2, "out":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/TreeSet;

    iget-object v5, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 359
    .local v1, "key":Ljava/lang/String;
    const-string v4, "OperationScheduler_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    const-string v4, "TimeMillis"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 362
    .local v3, "time":Landroid/text/format/Time;
    iget-object v4, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 363
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OperationScheduler_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%Y-%m-%d/%H:%M:%S"

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 366
    .end local v3    # "time":Landroid/text/format/Time;
    :cond_1
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OperationScheduler_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 371
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
