.class Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TutorialCardScrollAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/TutorialCardScrollAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field action:Landroid/widget/TextView;

.field content:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;

.field tutorial:Lcom/google/glass/tutorial/Tutorial;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/tutorial/TutorialCardScrollAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/tutorial/TutorialCardScrollAdapter$1;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$ViewHolder;-><init>()V

    return-void
.end method
