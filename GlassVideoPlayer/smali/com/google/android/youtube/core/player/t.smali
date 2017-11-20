.class public final Lcom/google/android/youtube/core/player/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field private static final i:Ljava/util/Set;


# instance fields
.field private volatile A:Z

.field private volatile B:I

.field private C:Lcom/google/android/youtube/core/model/Stream;

.field private D:Lcom/google/android/youtube/core/model/Stream;

.field private E:Z

.field private F:Z

.field private final G:Lcom/google/android/youtube/core/player/u;

.field private final H:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final I:Lcom/google/android/youtube/core/player/x;

.field private final j:Landroid/content/Context;

.field private final k:Ljava/util/concurrent/atomic/AtomicReference;

.field private final l:Ljava/util/concurrent/atomic/AtomicReference;

.field private final m:Lcom/google/android/youtube/core/player/w;

.field private final n:Landroid/os/Handler;

.field private final o:Ljava/lang/Runnable;

.field private final p:Lcom/google/android/youtube/core/player/k;

.field private final q:Lcom/google/android/youtube/core/player/v;

.field private r:Z

.field private s:Z

.field private t:Z

.field private volatile u:Z

.field private volatile v:Z

.field private volatile w:Z

.field private volatile x:Z

.field private volatile y:Z

.field private volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7fffffff

    const/16 v2, -0xbb8

    .line 126
    sget v0, Lcom/google/android/youtube/core/utils/Util;->a:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 128
    const/16 v0, -0xbb6

    sput v0, Lcom/google/android/youtube/core/player/t;->a:I

    .line 129
    const/16 v0, -0xbb5

    sput v0, Lcom/google/android/youtube/core/player/t;->b:I

    .line 130
    const/16 v0, -0xbb4

    sput v0, Lcom/google/android/youtube/core/player/t;->c:I

    .line 131
    const/16 v0, -0xbb3

    sput v0, Lcom/google/android/youtube/core/player/t;->d:I

    .line 132
    const/16 v0, -0xbb2

    sput v0, Lcom/google/android/youtube/core/player/t;->e:I

    .line 133
    const/16 v0, -0xbb1

    sput v0, Lcom/google/android/youtube/core/player/t;->f:I

    .line 134
    const/16 v0, -0xbb0

    sput v0, Lcom/google/android/youtube/core/player/t;->g:I

    .line 135
    sput v2, Lcom/google/android/youtube/core/player/t;->h:I

    .line 168
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 169
    const/16 v1, -0x3e81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    const/16 v1, -0x7d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    const/16 v1, -0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    sget v1, Lcom/google/android/youtube/core/player/t;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    sget v1, Lcom/google/android/youtube/core/player/t;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    sget v1, Lcom/google/android/youtube/core/player/t;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    sget v1, Lcom/google/android/youtube/core/player/t;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    sget v1, Lcom/google/android/youtube/core/player/t;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    sget v1, Lcom/google/android/youtube/core/player/t;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    sget v1, Lcom/google/android/youtube/core/player/t;->g:I

    if-eq v1, v3, :cond_0

    .line 180
    sget v1, Lcom/google/android/youtube/core/player/t;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    sget v1, Lcom/google/android/youtube/core/player/t;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/t;->i:Ljava/util/Set;

    .line 37
    return-void

    .line 138
    :cond_1
    sput v2, Lcom/google/android/youtube/core/player/t;->a:I

    .line 139
    const/16 v0, -0xbb9

    sput v0, Lcom/google/android/youtube/core/player/t;->b:I

    .line 140
    const/16 v0, -0xbba

    sput v0, Lcom/google/android/youtube/core/player/t;->c:I

    .line 141
    const/16 v0, -0xbbb

    sput v0, Lcom/google/android/youtube/core/player/t;->d:I

    .line 142
    const/16 v0, -0xbbc

    sput v0, Lcom/google/android/youtube/core/player/t;->e:I

    .line 143
    const/16 v0, -0xbbd

    sput v0, Lcom/google/android/youtube/core/player/t;->f:I

    .line 144
    sput v3, Lcom/google/android/youtube/core/player/t;->g:I

    .line 145
    const/16 v0, -0xbbe

    sput v0, Lcom/google/android/youtube/core/player/t;->h:I

    goto/16 :goto_0
.end method

.method private a(Lcom/google/android/youtube/core/player/i;)Landroid/media/audiofx/Virtualizer;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 561
    const/4 v1, 0x0

    .line 563
    :try_start_0
    new-instance v0, Landroid/media/audiofx/Virtualizer;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/android/youtube/core/player/i;->h()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/media/audiofx/Virtualizer;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/t;->r:Z

    .line 568
    iget-object v1, p0, Lcom/google/android/youtube/core/player/t;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 569
    return-object v0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    const-string v2, "Failed to initialize virtual surround sound"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/i;

    .line 482
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/t;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/t;->c(I)V

    .line 485
    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/i;->a(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 488
    const-string v1, "Error calling mediaPlayer"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(III)V
    .locals 4

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    return-void

    .line 1020
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1021
    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private a(Lcom/google/android/youtube/core/player/i;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 349
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 351
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->z:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->A:Z

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->b(I)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->p:Lcom/google/android/youtube/core/player/k;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/k;->a(Lcom/google/android/youtube/core/player/i;)V

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 356
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/t;->t:Z

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/youtube/core/player/i;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    const-string v1, "x-disconnect-at-highwatermark"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_1
    sget v1, Lcom/google/android/youtube/core/utils/Util;->a:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 360
    iget-object v1, p0, Lcom/google/android/youtube/core/player/t;->j:Landroid/content/Context;

    invoke-interface {p1, v1, p2, v0}, Lcom/google/android/youtube/core/player/i;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 364
    :goto_0
    invoke-interface {p1}, Lcom/google/android/youtube/core/player/i;->a()V

    .line 365
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/youtube/core/player/i;->a(Z)V

    .line 367
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->b(Z)V

    .line 383
    :goto_1
    return-void

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->j:Landroid/content/Context;

    invoke-interface {p1, v0, p2}, Lcom/google/android/youtube/core/player/i;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    const-string v1, "Media Player error preparing video"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 371
    :catch_1
    move-exception v0

    .line 373
    const-string v1, "Media Player error preparing video"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 375
    :catch_2
    move-exception v0

    .line 377
    const-string v1, "Error calling mediaPlayer"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 380
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Media Player null pointer preparing video "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/t;)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/t;->i()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/t;I)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/t;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/t;III)V
    .locals 0

    .prologue
    .line 1019
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/player/t;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/t;Lcom/google/android/youtube/core/model/Stream;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/t;->b(Lcom/google/android/youtube/core/model/Stream;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/t;Lcom/google/android/youtube/core/player/i;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/player/i;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/t;Z)V
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/t;->E:Z

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    return-void

    .line 1002
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1003
    const/16 v2, 0x9

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->s:Z

    if-eq v0, p1, :cond_0

    .line 541
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/t;->s:Z

    .line 543
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/i;

    .line 544
    const/4 v1, 0x0

    .line 545
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/t;->r:Z

    if-eqz v2, :cond_1

    .line 546
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    .line 550
    :goto_0
    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v1

    .line 552
    iget-object v1, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3db6f600-0e41-11e2-af49-0002a5d5c51b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    invoke-virtual {v0, p1}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    .line 557
    :cond_0
    return-void

    .line 547
    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 548
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/player/i;)Landroid/media/audiofx/Virtualizer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 999
    return-void

    .line 996
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 997
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private b(Lcom/google/android/youtube/core/model/Stream;)V
    .locals 3

    .prologue
    .line 319
    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 320
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/t;->c()V

    .line 321
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->p:Lcom/google/android/youtube/core/player/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/k;->a()V

    .line 322
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->E:Z

    if-nez v0, :cond_0

    .line 323
    iput-object p1, p0, Lcom/google/android/youtube/core/player/t;->C:Lcom/google/android/youtube/core/model/Stream;

    .line 339
    :goto_0
    return-void

    .line 328
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->q:Lcom/google/android/youtube/core/player/v;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/t;->v:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/player/v;->a(Lcom/google/android/youtube/core/model/Stream;Z)Lcom/google/android/youtube/core/player/i;

    move-result-object v0

    .line 329
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/i;->b(I)V

    .line 330
    sget v1, Lcom/google/android/youtube/core/utils/Util;->a:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/t;->s:Z

    if-eqz v1, :cond_1

    .line 331
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/t;->a(Z)V

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/core/player/t;->G:Lcom/google/android/youtube/core/player/u;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/i;->a(Lcom/google/android/youtube/core/player/j;)V

    .line 334
    iget-object v1, p0, Lcom/google/android/youtube/core/player/t;->m:Lcom/google/android/youtube/core/player/w;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/player/w;->a(Lcom/google/android/youtube/core/player/i;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    const-string v1, "Factory failed to create a MediaPlayer for the stream"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/t;)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/t;->g()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/t;I)V
    .locals 0

    .prologue
    .line 216
    iput p1, p0, Lcom/google/android/youtube/core/player/t;->B:I

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/t;Lcom/google/android/youtube/core/model/Stream;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/android/youtube/core/player/t;->C:Lcom/google/android/youtube/core/model/Stream;

    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->y:Z

    if-eq v0, p1, :cond_0

    .line 591
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/t;->y:Z

    .line 592
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->y:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->b(I)V

    .line 594
    :cond_0
    return-void

    .line 592
    :cond_1
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    return-void

    .line 1026
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1027
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/t;)V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/t;->h()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/t;)Lcom/google/android/youtube/core/model/Stream;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->C:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/player/t;)Lcom/google/android/youtube/core/player/k;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->p:Lcom/google/android/youtube/core/player/k;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/core/player/t;)Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->v:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/youtube/core/player/t;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/i;

    .line 410
    if-nez v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 415
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/t;->v:Z

    if-eqz v1, :cond_3

    .line 421
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/t;->x:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/t;->w:Z

    if-eqz v1, :cond_1

    .line 422
    invoke-interface {v0}, Lcom/google/android/youtube/core/player/i;->b()V

    .line 423
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/t;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->x:Z

    .line 426
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->A:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->w:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->u:Z

    if-eqz v0, :cond_2

    .line 427
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->b(I)V

    .line 440
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->A:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 443
    const-string v1, "Error calling mediaPlayer"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 430
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/t;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    invoke-interface {v0}, Lcom/google/android/youtube/core/player/i;->b()V

    .line 432
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/t;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->x:Z

    .line 434
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->A:Z

    if-nez v0, :cond_4

    .line 435
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->b(I)V

    .line 437
    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->I:Lcom/google/android/youtube/core/player/x;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/x;->a()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/i;

    .line 453
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/t;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 456
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/youtube/core/player/i;->c()V

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->x:Z

    .line 458
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->b(I)V

    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->b(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 462
    const-string v1, "Error calling mediaPlayer"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 502
    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 503
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->w:Z

    .line 504
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->x:Z

    .line 505
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/t;->b(Z)V

    .line 506
    sget v0, Lcom/google/android/youtube/core/utils/Util;->a:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/t;->j()V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/i;

    .line 510
    if-eqz v0, :cond_2

    .line 511
    iget-object v1, p0, Lcom/google/android/youtube/core/player/t;->I:Lcom/google/android/youtube/core/player/x;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/x;->b()V

    .line 512
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/t;->z:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/t;->A:Z

    if-nez v1, :cond_1

    .line 513
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/t;->b(I)V

    .line 515
    :cond_1
    invoke-interface {v0}, Lcom/google/android/youtube/core/player/i;->d()V

    .line 517
    :cond_2
    return-void
.end method

.method private j()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->r:Z

    .line 575
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->l:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    .line 576
    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->release()V

    .line 579
    :cond_0
    return-void
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->w:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->F:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->u:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->D:Lcom/google/android/youtube/core/model/Stream;

    if-eqz v0, :cond_0

    .line 610
    const-string v0, "video/wvm"

    iget-object v1, p0, Lcom/google/android/youtube/core/player/t;->D:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 609
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Stream;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->v:Z

    .line 311
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/t;->u:Z

    .line 312
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->F:Z

    .line 313
    iput-object p1, p0, Lcom/google/android/youtube/core/player/t;->D:Lcom/google/android/youtube/core/model/Stream;

    .line 314
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->I:Lcom/google/android/youtube/core/player/x;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/x;->b(Lcom/google/android/youtube/core/player/x;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 315
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/t;->b(Lcom/google/android/youtube/core/model/Stream;)V

    .line 316
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Stream;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->D:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/model/Stream;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->u:Z

    .line 293
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/t;->v:Z

    .line 294
    iput-object p1, p0, Lcom/google/android/youtube/core/player/t;->D:Lcom/google/android/youtube/core/model/Stream;

    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->I:Lcom/google/android/youtube/core/player/x;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/x;->b(Lcom/google/android/youtube/core/player/x;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 297
    const-string v0, "application/x-mpegURL"

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->F:Z

    .line 301
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->F:Z

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/t;->l()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->F:Z

    .line 303
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/t;->b(Lcom/google/android/youtube/core/model/Stream;)V

    .line 304
    return-void

    :cond_0
    move v0, v1

    .line 292
    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->I:Lcom/google/android/youtube/core/player/x;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/x;->a(Lcom/google/android/youtube/core/player/x;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->m:Lcom/google/android/youtube/core/player/w;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/w;->a()V

    .line 495
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->m:Lcom/google/android/youtube/core/player/w;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/w;->b()V

    .line 499
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/youtube/core/player/t;->p:Lcom/google/android/youtube/core/player/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/k;->a()V

    .line 525
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/t;->y:Z

    return v0
.end method
