.class public Lcom/google/glass/note/NoteManager$Request;
.super Ljava/lang/Object;
.source "NoteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/note/NoteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field private final hash:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private textNote:Lcom/google/android/glass/widget/Note$TextNote;

.field final type:Lcom/google/glass/note/NoteManager$Type;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/glass/note/NoteManager$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # Lcom/google/glass/note/NoteManager$Type;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p1, p0, Lcom/google/glass/note/NoteManager$Request;->view:Landroid/view/View;

    .line 444
    iput-object p2, p0, Lcom/google/glass/note/NoteManager$Request;->type:Lcom/google/glass/note/NoteManager$Type;

    .line 445
    iput-object p3, p0, Lcom/google/glass/note/NoteManager$Request;->tag:Ljava/lang/String;

    .line 446
    iput-object p4, p0, Lcom/google/glass/note/NoteManager$Request;->id:Ljava/lang/String;

    .line 447
    iput-object p5, p0, Lcom/google/glass/note/NoteManager$Request;->text:Ljava/lang/String;

    .line 449
    const-string v0, "%s:%s:%s:%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/glass/note/NoteManager$Type;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/note/NoteManager$Request;->hash:Ljava/lang/String;

    .line 450
    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/note/NoteManager$Request;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/note/NoteManager$Request;

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/google/glass/note/NoteManager$Request;->show()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/note/NoteManager$Request;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/note/NoteManager$Request;

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/google/glass/note/NoteManager$Request;->hide()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/note/NoteManager$Request;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/note/NoteManager$Request;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/glass/note/NoteManager$Request;->hash:Ljava/lang/String;

    return-object v0
.end method

.method private hide()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/glass/note/NoteManager$Request;->textNote:Lcom/google/android/glass/widget/Note$TextNote;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/google/glass/note/NoteManager$Request;->textNote:Lcom/google/android/glass/widget/Note$TextNote;

    invoke-interface {v0}, Lcom/google/android/glass/widget/Note$TextNote;->hide()V

    .line 462
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/note/NoteManager$Request;->textNote:Lcom/google/android/glass/widget/Note$TextNote;

    .line 463
    return-void
.end method

.method private show()V
    .locals 2

    .prologue
    .line 454
    invoke-static {}, Lcom/google/glass/note/NoteProvider;->getInstance()Lcom/google/glass/note/NoteProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/note/NoteManager$Request;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/glass/note/NoteProvider;->get(Landroid/view/View;)Lcom/google/android/glass/widget/Note;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/note/NoteManager$Request;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/Note;->startNote(Ljava/lang/CharSequence;)Lcom/google/android/glass/widget/Note$TextNote;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/note/NoteManager$Request;->textNote:Lcom/google/android/glass/widget/Note$TextNote;

    .line 455
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    const/4 v1, 0x0

    .line 477
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 476
    check-cast v0, Lcom/google/glass/note/NoteManager$Request;

    .line 477
    .local v0, "other":Lcom/google/glass/note/NoteManager$Request;
    iget-object v1, p0, Lcom/google/glass/note/NoteManager$Request;->hash:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/glass/note/NoteManager$Request;->hash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/glass/note/NoteManager$Request;->hash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/glass/note/NoteManager$Request;->textNote:Lcom/google/android/glass/widget/Note$TextNote;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/glass/note/NoteManager$Request;->view:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/note/NoteManager$Request;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/note/NoteManager$Request;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/note/NoteManager$Request;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/note/NoteManager$Request;->type:Lcom/google/glass/note/NoteManager$Type;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/note/NoteManager$Request;->hash:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/glass/note/NoteManager$Request;->textNote:Lcom/google/android/glass/widget/Note$TextNote;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Request [view="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", tag="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textNote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
