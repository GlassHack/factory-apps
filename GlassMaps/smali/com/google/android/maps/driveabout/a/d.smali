.class public final Lcom/google/android/maps/driveabout/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/a/ar;


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;

.field private static final b:Ljava/lang/String;

.field private static final c:[B


# instance fields
.field private d:Z

.field private final e:Landroid/content/Context;

.field private final f:Landroid/os/Handler;

.field private g:Lcom/google/android/maps/driveabout/a/ay;

.field private volatile h:Z

.field private volatile i:Z

.field private final j:Ljava/util/ArrayList;

.field private k:Ljava/util/LinkedList;

.field private l:Lcom/google/android/maps/driveabout/a/l;

.field private final m:Lcom/google/android/maps/driveabout/util/g;

.field private n:Lcom/google/android/maps/driveabout/a/av;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/a/d;->a:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    sget-object v0, Lcom/google/android/maps/driveabout/a/d;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/a/d;->b:Ljava/lang/String;

    .line 48
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/maps/driveabout/a/d;->c:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->j:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->k:Ljava/util/LinkedList;

    .line 89
    new-instance v0, Lcom/google/android/maps/driveabout/a/e;

    invoke-direct {v0, p0, v4}, Lcom/google/android/maps/driveabout/a/e;-><init>(Lcom/google/android/maps/driveabout/a/d;I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->m:Lcom/google/android/maps/driveabout/util/g;

    .line 293
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/d;->e:Landroid/content/Context;

    .line 294
    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/d;->f:Landroid/os/Handler;

    .line 295
    const/4 v0, 0x0

    :goto_0
    if-gt v0, v4, :cond_0

    .line 296
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->j:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "._speech_nav_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->d:Z

    .line 302
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Z)Ljava/io/File;
    .locals 3

    .prologue
    .line 361
    if-eqz p2, :cond_0

    .line 362
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 368
    :goto_0
    return-object v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->e:Landroid/content/Context;

    const-string v1, "da_speech"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 366
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/d;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private declared-synchronized a(ILcom/google/android/maps/driveabout/a/k;)V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v3, 0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    .line 420
    monitor-enter p0

    .line 423
    if-nez p1, :cond_b

    .line 427
    :try_start_0
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v5

    .line 428
    sget-object v0, Lcom/google/android/maps/driveabout/a/d;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0xf

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "systemLocale = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ay;->b()Ljava/util/Locale;

    move-result-object v6

    .line 432
    sget-object v0, Lcom/google/android/maps/driveabout/a/d;->b:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x18

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "userSelectedTtsLocale = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    if-eqz v6, :cond_a

    .line 434
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v0, v6}, Lcom/google/android/maps/driveabout/a/ay;->b(Ljava/util/Locale;)I

    move-result v0

    .line 435
    sget-object v4, Lcom/google/android/maps/driveabout/a/d;->b:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x23

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "isLanguageAvailable("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_0
    if-eqz v6, :cond_9

    .line 443
    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/a/az;->a(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v4

    .line 445
    :goto_1
    if-eq v0, v1, :cond_0

    if-nez v4, :cond_1

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v0, v5}, Lcom/google/android/maps/driveabout/a/ay;->a(Ljava/util/Locale;)I

    move-result v0

    .line 451
    sget-object v4, Lcom/google/android/maps/driveabout/a/d;->b:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x45

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Overriding TTS language "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with system locale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v4, Lcom/google/android/maps/driveabout/a/d;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v5}, Lcom/google/android/maps/driveabout/a/ay;->b()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "mTextToSpeech.getLanguage() is now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_1
    if-eq v0, v1, :cond_2

    if-ne v0, v10, :cond_8

    :cond_2
    move v1, v2

    .line 461
    :goto_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    new-instance v4, Lcom/google/android/maps/driveabout/a/j;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/android/maps/driveabout/a/j;-><init>(Lcom/google/android/maps/driveabout/a/d;Lcom/google/android/maps/driveabout/a/e;)V

    invoke-interface {v3, v4}, Lcom/google/android/maps/driveabout/a/ay;->a(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 467
    :cond_3
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->i:Z

    .line 468
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/a/d;->h:Z

    .line 470
    sget-object v2, Lcom/google/android/maps/driveabout/a/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    .line 471
    invoke-interface {v3}, Lcom/google/android/maps/driveabout/a/ay;->b()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TTS Initialized: status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supported:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " locale:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->i:Z

    if-eqz v1, :cond_4

    .line 474
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/a/ay;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/a/av;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/a/av;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->n:Lcom/google/android/maps/driveabout/a/av;

    .line 475
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/a/ay;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/nav/f;->a(Ljava/lang/String;)V

    .line 478
    :cond_4
    if-eqz p2, :cond_5

    .line 479
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->i:Z

    if-eqz v1, :cond_6

    .line 480
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/google/android/maps/driveabout/a/k;->a(I)V

    .line 489
    :cond_5
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 481
    :cond_6
    if-ne v0, v10, :cond_7

    .line 482
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p2, v0}, Lcom/google/android/maps/driveabout/a/k;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 484
    :cond_7
    const/4 v0, 0x2

    :try_start_2
    invoke-interface {p2, v0}, Lcom/google/android/maps/driveabout/a/k;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_8
    move v1, v3

    goto/16 :goto_2

    :cond_9
    move v4, v2

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    move v1, v2

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/d;ILcom/google/android/maps/driveabout/a/k;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/a/d;->a(ILcom/google/android/maps/driveabout/a/k;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/a/k;Lcom/google/android/maps/driveabout/a/ay;)V
    .locals 2

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    .line 390
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    new-instance v1, Lcom/google/android/maps/driveabout/a/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/a/f;-><init>(Lcom/google/android/maps/driveabout/a/d;Lcom/google/android/maps/driveabout/a/k;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/a/ay;->a(Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/google/android/maps/driveabout/a/l;)V
    .locals 1

    .prologue
    .line 584
    monitor-enter p0

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 586
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/d;->d()V

    .line 588
    return-void

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 738
    monitor-enter p0

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->l:Lcom/google/android/maps/driveabout/a/l;

    .line 741
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->l:Lcom/google/android/maps/driveabout/a/l;

    .line 742
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->d()Lcom/google/android/maps/driveabout/a/h;

    move-result-object v1

    .line 746
    if-eqz v1, :cond_0

    .line 747
    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/d;->m:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 748
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/a/l;->a(Lcom/google/android/maps/driveabout/a/a;)V

    .line 754
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/d;->d()V

    .line 755
    return-void

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 751
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 8

    .prologue
    const/16 v6, 0x46

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 314
    const/4 v3, 0x0

    .line 316
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    const/16 v3, 0x2c

    :try_start_1
    new-array v3, v3, [B

    .line 318
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    array-length v5, v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v4, v5, :cond_0

    .line 353
    sget-object v1, Lcom/google/android/maps/driveabout/a/d;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 356
    :goto_0
    return v0

    .line 322
    :cond_0
    const/4 v4, 0x0

    :try_start_2
    aget-byte v4, v3, v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    aget-byte v4, v3, v4

    if-ne v4, v6, :cond_1

    const/4 v4, 0x3

    aget-byte v4, v3, v4

    if-ne v4, v6, :cond_1

    const/16 v4, 0x8

    aget-byte v4, v3, v4

    const/16 v5, 0x57

    if-ne v4, v5, :cond_1

    const/16 v4, 0x9

    aget-byte v4, v3, v4

    const/16 v5, 0x41

    if-ne v4, v5, :cond_1

    const/16 v4, 0xa

    aget-byte v4, v3, v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_1

    const/16 v4, 0xb

    aget-byte v4, v3, v4

    const/16 v5, 0x45

    if-eq v4, v5, :cond_3

    .line 324
    :cond_1
    sget-object v4, Lcom/google/android/maps/driveabout/a/d;->b:Ljava/lang/String;

    const-string v5, "File doesn\'t look like a WAV file. Assuming it\'s correct: "

    .line 325
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    :goto_1
    invoke-static {v4, v3}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 353
    sget-object v0, Lcom/google/android/maps/driveabout/a/d;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move v0, v1

    goto :goto_0

    .line 325
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 349
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 353
    :goto_2
    sget-object v2, Lcom/google/android/maps/driveabout/a/d;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .line 329
    :cond_3
    const/16 v4, 0x28

    :try_start_4
    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x29

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0x2a

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0x2b

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v4

    .line 333
    if-lez v3, :cond_4

    add-int/lit8 v4, v3, 0x2c

    int-to-long v4, v4

    invoke-virtual {p0}, Ljava/io/File;->length()J
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 353
    :cond_4
    sget-object v1, Lcom/google/android/maps/driveabout/a/d;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto/16 :goto_0

    .line 339
    :cond_5
    :try_start_5
    sget-object v4, Lcom/google/android/maps/driveabout/a/d;->c:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 340
    sget-object v4, Lcom/google/android/maps/driveabout/a/d;->c:[B

    array-length v4, v4

    new-array v4, v4, [B

    .line 341
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v5

    if-eq v5, v3, :cond_6

    .line 353
    sget-object v1, Lcom/google/android/maps/driveabout/a/d;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto/16 :goto_0

    .line 345
    :cond_6
    :try_start_6
    sget-object v3, Lcom/google/android/maps/driveabout/a/d;->c:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-eqz v3, :cond_7

    .line 353
    sget-object v1, Lcom/google/android/maps/driveabout/a/d;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/google/android/maps/driveabout/a/d;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move v0, v1

    .line 356
    goto/16 :goto_0

    .line 351
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 353
    :goto_3
    sget-object v1, Lcom/google/android/maps/driveabout/a/d;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    sget-object v1, Lcom/google/android/maps/driveabout/a/d;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 351
    :catch_2
    move-exception v1

    goto :goto_3

    .line 349
    :catch_3
    move-exception v1

    move-object v1, v3

    goto/16 :goto_2
.end method

.method private a(Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 714
    if-eqz p1, :cond_0

    .line 715
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/d;->e()Landroid/os/StatFs;

    move-result-object v0

    .line 724
    :goto_0
    if-nez v0, :cond_1

    .line 730
    :goto_1
    return v1

    .line 717
    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/d;->f()Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 727
    :cond_1
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 728
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    .line 729
    mul-long/2addr v2, v4

    .line 730
    const-wide/32 v4, 0x80000

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 722
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/a/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/a/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 592
    .line 593
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 595
    monitor-enter p0

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->l:Lcom/google/android/maps/driveabout/a/l;

    if-eqz v0, :cond_1

    .line 597
    monitor-exit p0

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 601
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/l;

    .line 602
    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/d;->m:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 603
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 606
    :cond_2
    :try_start_1
    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->l:Lcom/google/android/maps/driveabout/a/l;

    move-object v2, v0

    .line 607
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/l;

    .line 613
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->m:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/a/a;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/a/l;->a(Lcom/google/android/maps/driveabout/a/a;)V

    goto :goto_3

    .line 616
    :cond_3
    if-eqz v2, :cond_0

    .line 627
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->d:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/d;->a(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 628
    sget-object v0, Lcom/google/android/maps/driveabout/a/d;->b:Ljava/lang/String;

    const-string v1, "Synthesis failed: SDCard is full or unavailable"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iput-boolean v5, p0, Lcom/google/android/maps/driveabout/a/d;->d:Z

    .line 631
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->d:Z

    if-nez v0, :cond_5

    invoke-direct {p0, v5}, Lcom/google/android/maps/driveabout/a/d;->a(Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 632
    sget-object v0, Lcom/google/android/maps/driveabout/a/d;->b:Ljava/lang/String;

    const-string v1, "Synthesis failed: App storage is full or unavailable"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/a/d;->a()V

    .line 637
    iput-boolean v5, p0, Lcom/google/android/maps/driveabout/a/d;->i:Z

    goto :goto_0

    .line 642
    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 643
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->d:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/a/d;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 644
    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/a/l;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 660
    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/d;->n:Lcom/google/android/maps/driveabout/a/av;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/a/l;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Locale;

    .line 661
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/a/av;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 667
    iget-object v4, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v0, v1}, Lcom/google/android/maps/driveabout/a/ay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 668
    if-eqz v0, :cond_0

    .line 671
    sget-object v1, Lcom/google/android/maps/driveabout/a/d;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Synthesis failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/a/l;->a()V

    .line 673
    monitor-enter p0

    .line 674
    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->l:Lcom/google/android/maps/driveabout/a/l;

    if-ne v0, v2, :cond_6

    .line 675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->l:Lcom/google/android/maps/driveabout/a/l;

    .line 677
    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 678
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/d;->d()V

    goto/16 :goto_0

    .line 677
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move-object v2, v1

    goto/16 :goto_2
.end method

.method private e()Landroid/os/StatFs;
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 691
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()Landroid/os/StatFs;
    .locals 2

    .prologue
    .line 701
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;
    .locals 2

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->m:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/at;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->i:Z

    if-nez v0, :cond_1

    .line 550
    :cond_0
    return-void

    .line 534
    :cond_1
    monitor-enter p0

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->k:Ljava/util/LinkedList;

    .line 536
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->k:Ljava/util/LinkedList;

    .line 537
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->l:Lcom/google/android/maps/driveabout/a/l;

    if-eqz v1, :cond_2

    .line 538
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->l:Lcom/google/android/maps/driveabout/a/l;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/a/ay;->c()I

    .line 540
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->l:Lcom/google/android/maps/driveabout/a/l;

    .line 542
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/l;

    .line 547
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->a()V

    goto :goto_0

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V
    .locals 2

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->i:Z

    if-nez v0, :cond_2

    .line 508
    :cond_0
    if-eqz p2, :cond_1

    .line 509
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/google/android/maps/driveabout/a/as;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/a;)V

    .line 521
    :cond_1
    :goto_0
    return-void

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->m:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/at;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/h;

    .line 514
    if-eqz v0, :cond_3

    .line 515
    if-eqz p2, :cond_1

    .line 516
    invoke-interface {p2, p1, v0}, Lcom/google/android/maps/driveabout/a/as;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/a;)V

    goto :goto_0

    .line 520
    :cond_3
    new-instance v0, Lcom/google/android/maps/driveabout/a/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/a/l;-><init>(Lcom/google/android/maps/driveabout/a/d;Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/d;->a(Lcom/google/android/maps/driveabout/a/l;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/a/k;)V
    .locals 2

    .prologue
    .line 378
    new-instance v0, Lcom/google/android/maps/driveabout/a/az;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/a/az;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/a/d;->a(Lcom/google/android/maps/driveabout/a/k;Lcom/google/android/maps/driveabout/a/ay;)V

    .line 379
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ay;->c()I

    .line 556
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ay;->a()V

    .line 558
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->h:Z

    .line 559
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 563
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->h:Z

    if-nez v1, :cond_1

    .line 564
    monitor-enter p0

    .line 566
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->h:Z

    if-nez v1, :cond_0

    .line 567
    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :cond_0
    monitor-exit p0

    .line 575
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->h:Z

    if-nez v1, :cond_2

    .line 578
    :goto_0
    return-object v0

    .line 570
    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 571
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->g:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ay;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
