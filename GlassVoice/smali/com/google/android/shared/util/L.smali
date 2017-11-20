.class public Lcom/google/android/shared/util/L;
.super Ljava/lang/Object;
.source "L.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/util/L$DebugStackTraceLogger;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final NULL:Ljava/lang/String; = "null"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs buildMessage(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 360
    if-nez p0, :cond_0

    .line 361
    const-string v1, "null"

    .line 373
    :goto_0
    return-object v1

    .line 365
    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_2

    .line 366
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 371
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "ex":Ljava/util/IllegalFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static capTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x17

    .line 286
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    .end local p0    # "tag":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 98
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public static varargs dWithStackTrace(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 115
    const/4 v0, 0x3

    new-instance v1, Lcom/google/android/shared/util/L$DebugStackTraceLogger;

    invoke-direct {v1}, Lcom/google/android/shared/util/L$DebugStackTraceLogger;-><init>()V

    invoke-static {v0, p0, v1, p1, p2}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 195
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 218
    const/4 v0, 0x6

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p2, p1, v1}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 210
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 130
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public static varargs iWithStackTrace(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 144
    const/4 v0, 0x4

    new-instance v1, Lcom/google/android/shared/util/L$DebugStackTraceLogger;

    invoke-direct {v1}, Lcom/google/android/shared/util/L$DebugStackTraceLogger;-><init>()V

    invoke-static {v0, p0, v1, p1, p2}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method private static varargs internalLog(ILjava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 295
    return-void
.end method

.method private static varargs internalLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/Object;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 300
    invoke-static {p1}, Lcom/google/android/shared/util/L;->capTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-static {p3, p4}, Lcom/google/android/shared/util/L;->buildMessage(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "formattedMessage":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 312
    :pswitch_0
    if-eqz p2, :cond_1

    .line 313
    invoke-static {p1, v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 315
    :cond_1
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :pswitch_1
    if-eqz p2, :cond_2

    .line 320
    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 322
    :cond_2
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :pswitch_2
    if-eqz p2, :cond_3

    .line 327
    invoke-static {p1, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 329
    :cond_3
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :pswitch_3
    if-eqz p2, :cond_4

    .line 334
    invoke-static {p1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 336
    :cond_4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    :pswitch_4
    if-eqz p2, :cond_5

    .line 341
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 343
    :cond_5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :pswitch_5
    if-eqz p2, :cond_6

    .line 348
    invoke-static {p1, v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 350
    :cond_6
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static isDebugEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 280
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/android/shared/util/L;->isEnabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static isEnabled(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    .line 290
    invoke-static {p0}, Lcom/google/android/shared/util/L;->capTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isVerboseEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/shared/util/L;->isEnabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 64
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public static varargs vWithStackTrace(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 81
    const/4 v0, 0x2

    new-instance v1, Lcom/google/android/shared/util/L$DebugStackTraceLogger;

    invoke-direct {v1}, Lcom/google/android/shared/util/L$DebugStackTraceLogger;-><init>()V

    invoke-static {v0, p0, v1, p1, p2}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 158
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 181
    const/4 v0, 0x5

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p2, p1, v1}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 173
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/shared/util/L;->internalLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 248
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
