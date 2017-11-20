.class public Lcom/google/glass/note/RotatingTextNote$Provider;
.super Lcom/google/glass/inject/Provider;
.source "RotatingTextNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/note/RotatingTextNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/note/RotatingTextNote;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/note/RotatingTextNote$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/glass/note/RotatingTextNote$Provider;

    invoke-direct {v0}, Lcom/google/glass/note/RotatingTextNote$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/note/RotatingTextNote$Provider;->INSTANCE:Lcom/google/glass/note/RotatingTextNote$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/note/RotatingTextNote$Provider;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/glass/note/RotatingTextNote$Provider;->INSTANCE:Lcom/google/glass/note/RotatingTextNote$Provider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/view/View;ZLcom/google/common/collect/ImmutableList;)Lcom/google/glass/note/RotatingTextNote;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hideBackground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Lcom/google/glass/note/RotatingTextNote;"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "textsAndDurations":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    new-instance v0, Lcom/google/glass/note/RotatingTextNote$Provider$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/note/RotatingTextNote$Provider$1;-><init>(Lcom/google/glass/note/RotatingTextNote$Provider;Landroid/view/View;ZLcom/google/common/collect/ImmutableList;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/note/RotatingTextNote$Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/note/RotatingTextNote;

    return-object v0
.end method
