.class public Lcom/google/android/maps/driveabout/c/q;
.super Lcom/google/android/maps/driveabout/g/j;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/Map;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 412
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/c/q;->b:Ljava/util/Map;

    .line 415
    sget-object v0, Lcom/google/android/maps/driveabout/c/q;->b:Ljava/util/Map;

    const-string v1, "layers"

    const-string v2, "clear"

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 4

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/g/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 417
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/q;->c:Ljava/util/Map;

    .line 425
    const-string v0, "action"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/q;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/q;->a:Ljava/lang/String;

    .line 426
    sget-object v0, Lcom/google/android/maps/driveabout/c/q;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/q;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 427
    if-eqz v0, :cond_0

    .line 428
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    iget-object v2, p0, Lcom/google/android/maps/driveabout/c/q;->c:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/q;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 432
    :cond_0
    return-void
.end method

.method public static a(Lorg/w3c/dom/Node;)Lcom/google/android/maps/driveabout/c/q;
    .locals 1

    .prologue
    .line 436
    const-string v0, "param2"

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/c/q;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Lcom/google/android/maps/driveabout/c/p;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/c/p;-><init>(Lorg/w3c/dom/Node;)V

    .line 441
    :goto_0
    return-object v0

    .line 438
    :cond_0
    const-string v0, "param"

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/c/q;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    new-instance v0, Lcom/google/android/maps/driveabout/c/r;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/c/r;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 441
    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/c/q;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/c/q;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Ljava/io/Writer;)V
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/q;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "<ui action=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/c/q;->b(Ljava/io/Writer;)V

    .line 456
    const-string v0, "/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method protected b(Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 450
    return-void
.end method
