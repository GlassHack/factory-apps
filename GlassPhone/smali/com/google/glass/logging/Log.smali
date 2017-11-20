.class public final Lcom/google/glass/logging/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final IS_USER_BUILD:Z

.field private static final LOG_PII:Z

.field private static final MAX_TAG_LENGTH:I = 0x17

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/glass/logging/Log;->IS_USER_BUILD:Z

    .line 23
    sget-boolean v0, Lcom/google/glass/logging/Log;->IS_USER_BUILD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/glass/logging/Log;->LOG_PII:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 230
    invoke-static {p1, p0}, Lcom/google/glass/logging/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    :goto_0
    return-void

    .line 238
    :cond_0
    if-eqz p4, :cond_1

    :try_start_0
    array-length v2, p4
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    :cond_1
    move-object v1, p2

    .line 245
    .local v1, "message":Ljava/lang/String;
    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 268
    :pswitch_0
    if-eqz p3, :cond_6

    .line 269
    invoke-static {p1, v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 238
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/util/IllegalFormatException;
    const-string v2, "Log"

    const-string v3, "Error formatting message. format: [%s], args: [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    throw v0

    .line 247
    .end local v0    # "e":Ljava/util/IllegalFormatException;
    .restart local v1    # "message":Ljava/lang/String;
    :pswitch_1
    if-eqz p3, :cond_3

    .line 248
    invoke-static {p1, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 250
    :cond_3
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :pswitch_2
    if-eqz p3, :cond_4

    .line 255
    invoke-static {p1, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 257
    :cond_4
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :pswitch_3
    if-eqz p3, :cond_5

    .line 262
    invoke-static {p1, v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 264
    :cond_5
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_6
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :pswitch_4
    if-eqz p3, :cond_7

    .line 276
    invoke-static {p1, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 278
    :cond_7
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 148
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 162
    const/4 v0, 0x3

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 64
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 78
    const/4 v0, 0x6

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 120
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 134
    const/4 v0, 0x4

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    const/16 v6, 0x17

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 205
    move-object v2, p0

    .line 206
    .local v2, "shortTag":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 207
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 210
    :cond_0
    const/4 v5, 0x3

    if-ge p1, v5, :cond_3

    move v1, v3

    .line 211
    .local v1, "isVerbose":Z
    :goto_0
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 212
    .local v0, "isLoggable":Z
    sget-boolean v5, Lcom/google/glass/logging/Log;->IS_USER_BUILD:Z

    if-nez v5, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    return v3

    .end local v0    # "isLoggable":Z
    .end local v1    # "isVerbose":Z
    :cond_3
    move v1, v4

    .line 210
    goto :goto_0

    .restart local v0    # "isLoggable":Z
    .restart local v1    # "isVerbose":Z
    :cond_4
    move v3, v4

    .line 212
    goto :goto_1
.end method

.method public static logPii(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public static logPii(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    sget-boolean v0, Lcom/google/glass/logging/Log;->LOG_PII:Z

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 51
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 176
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 190
    const/4 v0, 0x2

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 92
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 106
    const/4 v0, 0x5

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method
