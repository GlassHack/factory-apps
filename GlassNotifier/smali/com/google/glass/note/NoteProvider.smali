.class public Lcom/google/glass/note/NoteProvider;
.super Lcom/google/glass/inject/Provider;
.source "NoteProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/android/glass/widget/Note;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/note/NoteProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/glass/note/NoteProvider;

    invoke-direct {v0}, Lcom/google/glass/note/NoteProvider;-><init>()V

    sput-object v0, Lcom/google/glass/note/NoteProvider;->instance:Lcom/google/glass/note/NoteProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/note/NoteProvider;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/note/NoteProvider;->instance:Lcom/google/glass/note/NoteProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/view/View;)Lcom/google/android/glass/widget/Note;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 22
    new-instance v0, Lcom/google/glass/note/NoteProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/note/NoteProvider$1;-><init>(Lcom/google/glass/note/NoteProvider;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/note/NoteProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/Note;

    return-object v0
.end method
