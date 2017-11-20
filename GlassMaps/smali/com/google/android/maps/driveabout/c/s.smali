.class public final Lcom/google/android/maps/driveabout/c/s;
.super Lcom/google/android/maps/driveabout/g/j;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;


# instance fields
.field private final b:[Landroid/view/KeyEvent;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 589
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/c/s;->a:Ljava/util/Map;

    .line 591
    sget-object v0, Lcom/google/android/maps/driveabout/c/s;->a:Ljava/util/Map;

    const-string v1, "keyDown"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lcom/google/android/maps/driveabout/c/s;->a:Ljava/util/Map;

    const-string v1, "keyUp"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lcom/google/android/maps/driveabout/c/s;->a:Ljava/util/Map;

    const-string v1, "keyMulti"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 3

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/g/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 640
    const-string v0, "action"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/s;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/s;->c:Ljava/lang/String;

    .line 641
    const-string v0, "keycode"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/s;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 642
    const/4 v0, 0x1

    .line 643
    const-string v2, "times"

    invoke-static {p1, v2}, Lcom/google/android/maps/driveabout/c/s;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 644
    if-eqz v2, :cond_0

    .line 645
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 647
    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/c/s;->c:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/google/android/maps/driveabout/c/s;->a(Ljava/lang/String;II)[Landroid/view/KeyEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/s;->b:[Landroid/view/KeyEvent;

    .line 648
    const-string v0, "dialog"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/s;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/s;->d:Ljava/lang/String;

    .line 649
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/s;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/s;->e:Ljava/lang/String;

    .line 650
    return-void
.end method

.method private a()I
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/s;->b:[Landroid/view/KeyEvent;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;II)[Landroid/view/KeyEvent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 609
    sget-object v0, Lcom/google/android/maps/driveabout/c/s;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 611
    if-eqz v0, :cond_0

    .line 612
    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 613
    new-array v0, p2, [Landroid/view/KeyEvent;

    .line 614
    :goto_0
    if-ge v1, p2, :cond_3

    .line 615
    aput-object v2, v0, v1

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    :cond_0
    const-string v0, "keyDownUp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 619
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v0, 0x1

    invoke-direct {v3, v0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 620
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [Landroid/view/KeyEvent;

    .line 621
    :goto_1
    mul-int/lit8 v4, p2, 0x2

    if-ge v1, v4, :cond_3

    .line 622
    aput-object v2, v0, v1

    .line 623
    add-int/lit8 v4, v1, 0x1

    aput-object v3, v0, v4

    .line 621
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 626
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown Action: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 628
    :cond_3
    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/io/Writer;)V
    .locals 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/s;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "<key action=\'"

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

    .line 662
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/c/s;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "keycode=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 663
    return-void
.end method
