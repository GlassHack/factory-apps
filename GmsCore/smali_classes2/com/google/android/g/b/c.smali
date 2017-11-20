.class public final Lcom/google/android/g/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static c:Lcom/google/android/g/b/c;

.field private static d:Ljava/lang/Object;


# instance fields
.field private final e:[Lcom/google/android/g/b/d;

.field private final f:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    const-string v0, " +"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/g/b/c;->a:Ljava/util/regex/Pattern;

    .line 141
    const-string v0, "\\W"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/g/b/c;->b:Ljava/util/regex/Pattern;

    .line 144
    new-instance v0, Lcom/google/android/g/b/c;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/g/b/d;

    invoke-direct {v0, v1}, Lcom/google/android/g/b/c;-><init>([Lcom/google/android/g/b/d;)V

    sput-object v0, Lcom/google/android/g/b/c;->c:Lcom/google/android/g/b/c;

    return-void
.end method

.method private constructor <init>([Lcom/google/android/g/b/d;)V
    .locals 4

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 167
    if-lez v0, :cond_0

    const-string v2, ")|("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    sget-object v2, Lcom/google/android/g/b/c;->b:Ljava/util/regex/Pattern;

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/google/android/g/b/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "\\\\$0"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/g/b/c;->f:Ljava/util/regex/Pattern;

    .line 171
    iput-object p1, p0, Lcom/google/android/g/b/c;->e:[Lcom/google/android/g/b/d;

    .line 172
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/ContentResolver;)Lcom/google/android/g/b/c;
    .locals 9

    .prologue
    .line 197
    const-class v2, Lcom/google/android/g/b/c;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v3

    .line 198
    sget-object v0, Lcom/google/android/g/b/c;->d:Ljava/lang/Object;

    if-ne v3, v0, :cond_1

    .line 200
    const-string v0, "UrlRules"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "UrlRules"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Using cached rules, versionToken: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    sget-object v0, Lcom/google/android/g/b/c;->c:Lcom/google/android/g/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :goto_0
    monitor-exit v2

    return-object v0

    .line 206
    :cond_1
    :try_start_1
    const-string v0, "UrlRules"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    const-string v0, "UrlRules"

    const-string v1, "Scanning for Gservices \"url:*\" rules"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "url:"

    aput-object v4, v0, v1

    invoke-static {p0, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 211
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 217
    const-string v6, "UrlRules"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "UrlRules"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  Rule "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_4
    new-instance v6, Lcom/google/android/g/b/d;

    invoke-direct {v6, v1, v0}, Lcom/google/android/g/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/android/g/b/e; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    .line 221
    :try_start_3
    const-string v1, "UrlRules"

    const-string v6, "Invalid rule from Gservices"

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 224
    :cond_5
    :try_start_4
    new-instance v1, Lcom/google/android/g/b/c;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/g/b/d;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/g/b/d;

    invoke-direct {v1, v0}, Lcom/google/android/g/b/c;-><init>([Lcom/google/android/g/b/d;)V

    sput-object v1, Lcom/google/android/g/b/c;->c:Lcom/google/android/g/b/c;

    .line 225
    sput-object v3, Lcom/google/android/g/b/c;->d:Ljava/lang/Object;

    .line 226
    const-string v0, "UrlRules"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 227
    const-string v0, "UrlRules"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "New rules stored, versionToken: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_6
    sget-object v0, Lcom/google/android/g/b/c;->c:Lcom/google/android/g/b/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/g/b/c;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/g/b/d;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/g/b/c;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/g/b/c;->e:[Lcom/google/android/g/b/d;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 183
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v1, p0, Lcom/google/android/g/b/c;->e:[Lcom/google/android/g/b/d;

    aget-object v0, v1, v0

    .line 188
    :goto_1
    return-object v0

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    sget-object v0, Lcom/google/android/g/b/d;->e:Lcom/google/android/g/b/d;

    goto :goto_1
.end method
