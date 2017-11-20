.class public Lcom/google/glass/widget/MessageDialogManager$Provider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/widget/MessageDialogManager$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/glass/widget/MessageDialogManager$Provider;

    invoke-direct {v0}, Lcom/google/glass/widget/MessageDialogManager$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/widget/MessageDialogManager$Provider;->INSTANCE:Lcom/google/glass/widget/MessageDialogManager$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    .line 85
    new-instance v0, Lcom/google/glass/widget/MessageDialogManager$Provider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/MessageDialogManager$Provider$1;-><init>(Lcom/google/glass/widget/MessageDialogManager$Provider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialogManager$Provider;->init(Lcom/google/common/base/av;)V

    .line 91
    return-void
.end method

.method public static getInstance()Lcom/google/glass/widget/MessageDialogManager$Provider;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/glass/widget/MessageDialogManager$Provider;->INSTANCE:Lcom/google/glass/widget/MessageDialogManager$Provider;

    return-object v0
.end method
