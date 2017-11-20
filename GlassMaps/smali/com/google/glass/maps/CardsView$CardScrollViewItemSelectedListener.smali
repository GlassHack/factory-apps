.class Lcom/google/glass/maps/CardsView$CardScrollViewItemSelectedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/CardsView;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/CardsView;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemSelectedListener;->this$0:Lcom/google/glass/maps/CardsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/CardsView;Lcom/google/glass/maps/CardsView$1;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView$CardScrollViewItemSelectedListener;-><init>(Lcom/google/glass/maps/CardsView;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemSelectedListener;->this$0:Lcom/google/glass/maps/CardsView;

    invoke-static {v0, p3}, Lcom/google/glass/maps/CardsView;->access$400(Lcom/google/glass/maps/CardsView;I)V

    .line 168
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method
