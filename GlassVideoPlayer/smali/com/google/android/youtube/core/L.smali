.class public Lcom/google/android/youtube/core/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static b:Ljava/lang/String;

.field private static final c:I

.field private static final d:Ljava/lang/String;

.field private static e:Ljava/util/regex/Pattern;

.field private static synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/android/youtube/core/L;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/youtube/core/L;->a:Z

    .line 27
    const-string v0, "L"

    sput-object v0, Lcom/google/android/youtube/core/L;->b:Ljava/lang/String;

    .line 37
    const-string v0, "com.google.android."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/youtube/core/L;->c:I

    .line 43
    const-class v0, Lcom/google/android/youtube/core/L;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/L;->d:Ljava/lang/String;

    .line 48
    const-string v0, ""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/L;->e:Ljava/util/regex/Pattern;

    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 164
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->VERBOSE:Lcom/google/android/youtube/core/L$Type;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/L;->a(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    return-void
.end method

.method private static a(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {}, Lcom/google/android/youtube/core/L;->c()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/L$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 239
    sget-boolean v0, Lcom/google/android/youtube/core/L;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unknown type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 217
    :pswitch_0
    sget-object v0, Lcom/google/android/youtube/core/L;->b:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 221
    :pswitch_1
    sget-object v0, Lcom/google/android/youtube/core/L;->b:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 225
    :pswitch_2
    sget-object v0, Lcom/google/android/youtube/core/L;->b:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 229
    :pswitch_3
    sget-object v0, Lcom/google/android/youtube/core/L;->b:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 233
    :pswitch_4
    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/google/android/youtube/core/L;->b:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->ERROR:Lcom/google/android/youtube/core/L$Type;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/youtube/core/L;->a(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->ERROR:Lcom/google/android/youtube/core/L$Type;

    invoke-static {v0, p0, p1}, Lcom/google/android/youtube/core/L;->a(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 187
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 195
    const-string v0, "(unknown)"

    :goto_1
    return-object v0

    .line 187
    :cond_0
    aget-object v3, v1, v0

    .line 188
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 189
    sget-object v5, Lcom/google/android/youtube/core/L;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.google.android."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lcom/google/android/youtube/core/L;->c:I

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 187
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->WARNING:Lcom/google/android/youtube/core/L$Type;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/youtube/core/L;->a(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->WARNING:Lcom/google/android/youtube/core/L$Type;

    invoke-static {v0, p0, p1}, Lcom/google/android/youtube/core/L;->a(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/google/android/youtube/core/L$Type;->DEBUG:Lcom/google/android/youtube/core/L$Type;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/youtube/core/L;->a(Lcom/google/android/youtube/core/L$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    return-void
.end method

.method private static synthetic c()[I
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/youtube/core/L;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/youtube/core/L$Type;->values()[Lcom/google/android/youtube/core/L$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/android/youtube/core/L$Type;->DEBUG:Lcom/google/android/youtube/core/L$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/L$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/android/youtube/core/L$Type;->ERROR:Lcom/google/android/youtube/core/L$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/L$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/android/youtube/core/L$Type;->INFO:Lcom/google/android/youtube/core/L$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/L$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/google/android/youtube/core/L$Type;->VERBOSE:Lcom/google/android/youtube/core/L$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/L$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/google/android/youtube/core/L$Type;->WARNING:Lcom/google/android/youtube/core/L$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/L$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/google/android/youtube/core/L;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 207
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/youtube/core/L;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
