.class public Lcom/android/providers/contacts/FastScrollingIndexCache;
.super Ljava/lang/Object;
.source "FastScrollingIndexCache.java"


# static fields
.field static final PREFERENCE_KEY:Ljava/lang/String; = "LetterCountCache"

.field private static final SAVE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static sSingleton:Lcom/android/providers/contacts/FastScrollingIndexCache;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceLoaded:Z

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "\u0001"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/FastScrollingIndexCache;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "\u0002"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/FastScrollingIndexCache;->SAVE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    .line 106
    iput-object p1, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPrefs:Landroid/content/SharedPreferences;

    .line 107
    return-void
.end method

.method private static appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    return-void
.end method

.method private static buildCacheKey(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "queryUri"    # Landroid/net/Uri;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .param p4, "countExpression"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {v1, p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 126
    const-string v2, "\u0001"

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 127
    invoke-static {v1, p1}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 128
    const-string v2, "\u0001"

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 129
    invoke-static {v1, p3}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 130
    const-string v2, "\u0001"

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 131
    invoke-static {v1, p4}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 133
    if-eqz p2, :cond_0

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 135
    const-string v2, "\u0001"

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 136
    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static buildCacheValue([Ljava/lang/String;[I)Ljava/lang/String;
    .locals 3
    .param p0, "titles"    # [Ljava/lang/String;
    .param p1, "counts"    # [I

    .prologue
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 147
    if-lez v0, :cond_0

    .line 148
    const-string v2, "\u0001"

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 150
    :cond_0
    aget-object v2, p0, v0

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 151
    const-string v2, "\u0001"

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 152
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final buildExtraBundle([Ljava/lang/String;[I)Landroid/os/Bundle;
    .locals 2
    .param p0, "titles"    # [Ljava/lang/String;
    .param p1, "counts"    # [I

    .prologue
    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "address_book_index_titles"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 164
    const-string v1, "address_book_index_counts"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 165
    return-object v0
.end method

.method static buildExtraBundleFromValue(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 172
    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/String;

    .line 177
    .local v5, "values":[Ljava/lang/String;
    :goto_0
    array-length v7, v5

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    .line 194
    :goto_1
    return-object v6

    .line 174
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    sget-object v7, Lcom/android/providers/contacts/FastScrollingIndexCache;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "values":[Ljava/lang/String;
    goto :goto_0

    .line 182
    :cond_1
    :try_start_0
    array-length v7, v5

    div-int/lit8 v3, v7, 0x2

    .line 183
    .local v3, "numTitles":I
    new-array v4, v3, [Ljava/lang/String;

    .line 184
    .local v4, "titles":[Ljava/lang/String;
    new-array v0, v3, [I

    .line 186
    .local v0, "counts":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 187
    mul-int/lit8 v7, v2, 0x2

    aget-object v7, v5, v7

    aput-object v7, v4, v2

    .line 188
    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v2

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 191
    :cond_2
    invoke-static {v4, v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->buildExtraBundle([Ljava/lang/String;[I)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 192
    .end local v0    # "counts":[I
    .end local v2    # "i":I
    .end local v3    # "numTitles":I
    .end local v4    # "titles":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v7, "LetterCountCache"

    const-string v8, "Failed to parse cached value"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private ensureLoaded()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    .line 278
    iget-boolean v7, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPreferenceLoaded:Z

    if-eqz v7, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v7, "LetterCountCache"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 281
    const-string v7, "LetterCountCache"

    const-string v8, "Loading..."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPreferenceLoaded:Z

    .line 287
    const/4 v5, 0x0

    .line 289
    .local v5, "successfullyLoaded":Z
    :try_start_0
    iget-object v7, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "LetterCountCache"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "savedValue":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 293
    sget-object v7, Lcom/android/providers/contacts/FastScrollingIndexCache;->SAVE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "keysAndValues":[Ljava/lang/String;
    array-length v7, v3

    rem-int/lit8 v7, v7, 0x2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_3

    .line 315
    if-nez v5, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->invalidate()V

    goto :goto_0

    .line 299
    :cond_3
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    :try_start_1
    array-length v7, v3

    if-ge v1, v7, :cond_5

    .line 300
    add-int/lit8 v7, v1, -0x1

    aget-object v2, v3, v7

    .line 301
    .local v2, "key":Ljava/lang/String;
    aget-object v6, v3, v1

    .line 303
    .local v6, "value":Ljava/lang/String;
    const-string v7, "LetterCountCache"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 304
    const-string v7, "LetterCountCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_4
    iget-object v7, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 310
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keysAndValues":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    .line 315
    if-nez v5, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->invalidate()V

    goto :goto_0

    .line 311
    .end local v4    # "savedValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v7, "LetterCountCache"

    const-string v8, "Failed to load from preferences"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    if-nez v5, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->invalidate()V

    goto :goto_0

    .line 315
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v7

    if-nez v5, :cond_6

    .line 316
    invoke-virtual {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->invalidate()V

    :cond_6
    throw v7
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/FastScrollingIndexCache;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sget-object v1, Lcom/android/providers/contacts/FastScrollingIndexCache;->sSingleton:Lcom/android/providers/contacts/FastScrollingIndexCache;

    if-nez v1, :cond_0

    .line 92
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/android/providers/contacts/FastScrollingIndexCache;

    invoke-direct {v1, v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v1, Lcom/android/providers/contacts/FastScrollingIndexCache;->sSingleton:Lcom/android/providers/contacts/FastScrollingIndexCache;

    .line 95
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    sget-object v1, Lcom/android/providers/contacts/FastScrollingIndexCache;->sSingleton:Lcom/android/providers/contacts/FastScrollingIndexCache;

    return-object v1
.end method

.method static declared-synchronized getInstanceForTest(Landroid/content/SharedPreferences;)Lcom/android/providers/contacts/FastScrollingIndexCache;
    .locals 2
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 101
    const-class v1, Lcom/android/providers/contacts/FastScrollingIndexCache;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/providers/contacts/FastScrollingIndexCache;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/android/providers/contacts/FastScrollingIndexCache;->sSingleton:Lcom/android/providers/contacts/FastScrollingIndexCache;

    .line 102
    sget-object v0, Lcom/android/providers/contacts/FastScrollingIndexCache;->sSingleton:Lcom/android/providers/contacts/FastScrollingIndexCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private save()V
    .locals 6

    .prologue
    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 268
    const-string v3, "\u0002"

    invoke-static {v2, v3}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 270
    :cond_0
    invoke-static {v2, v1}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 271
    const-string v3, "\u0002"

    invoke-static {v2, v3}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 272
    iget-object v3, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 274
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LetterCountCache"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    return-void
.end method


# virtual methods
.method public get(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p1, "queryUri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .param p5, "countExpression"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v4, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    monitor-enter v4

    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->ensureLoaded()V

    .line 202
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/providers/contacts/FastScrollingIndexCache;->buildCacheKey(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 206
    const-string v3, "LetterCountCache"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    const-string v3, "LetterCountCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Miss: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    const/4 v0, 0x0

    monitor-exit v4

    .line 222
    :goto_0
    return-object v0

    .line 212
    :cond_1
    invoke-static {v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->buildExtraBundleFromValue(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 213
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_3

    .line 215
    iget-object v3, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-direct {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->save()V

    .line 222
    :cond_2
    :goto_1
    monitor-exit v4

    goto :goto_0

    .line 223
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 218
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v3, "LetterCountCache"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    const-string v3, "LetterCountCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hit:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "LetterCountCache"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    iget-object v0, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPreferenceLoaded:Z

    .line 253
    const-string v0, "LetterCountCache"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "LetterCountCache"

    const-string v2, "Invalidated"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    monitor-exit v1

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "queryUri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .param p5, "countExpression"    # Ljava/lang/String;
    .param p6, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 232
    iget-object v2, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    monitor-enter v2

    .line 233
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->ensureLoaded()V

    .line 234
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/providers/contacts/FastScrollingIndexCache;->buildCacheKey(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    const-string v3, "address_book_index_titles"

    invoke-virtual {p6, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "address_book_index_counts"

    invoke-virtual {p6, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/contacts/FastScrollingIndexCache;->buildCacheValue([Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-direct {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->save()V

    .line 241
    const-string v1, "LetterCountCache"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "LetterCountCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Put: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    monitor-exit v2

    .line 245
    return-void

    .line 244
    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
