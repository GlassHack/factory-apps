.class Lcom/google/glass/settings/ui/labs/LabsActivity$OnItemClickListener;
.super Ljava/lang/Object;
.source "LabsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/labs/LabsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/labs/LabsActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/labs/LabsActivity;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/glass/settings/ui/labs/LabsActivity$OnItemClickListener;->this$0:Lcom/google/glass/settings/ui/labs/LabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/labs/LabsActivity;Lcom/google/glass/settings/ui/labs/LabsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/labs/LabsActivity;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/labs/LabsActivity$1;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/labs/LabsActivity$OnItemClickListener;-><init>(Lcom/google/glass/settings/ui/labs/LabsActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    iget-object v1, p0, Lcom/google/glass/settings/ui/labs/LabsActivity$OnItemClickListener;->this$0:Lcom/google/glass/settings/ui/labs/LabsActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/labs/LabsActivity;->access$100(Lcom/google/glass/settings/ui/labs/LabsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "onItemClick() [parent=%s, view=%s, position=%s, id=%s]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 133
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 132
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/labs/LabCard;

    .line 136
    .local v0, "labCard":Lcom/google/glass/settings/ui/labs/LabCard;
    iget-object v1, p0, Lcom/google/glass/settings/ui/labs/LabsActivity$OnItemClickListener;->this$0:Lcom/google/glass/settings/ui/labs/LabsActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/labs/LabsActivity;->access$100(Lcom/google/glass/settings/ui/labs/LabsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "onItemClick() [labCard=%s]"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lcom/google/glass/settings/ui/labs/LabsActivity$OnItemClickListener;->this$0:Lcom/google/glass/settings/ui/labs/LabsActivity;

    invoke-static {v1, v0}, Lcom/google/glass/settings/ui/labs/LabsActivity;->access$202(Lcom/google/glass/settings/ui/labs/LabsActivity;Lcom/google/glass/settings/ui/labs/LabCard;)Lcom/google/glass/settings/ui/labs/LabCard;

    .line 138
    iget-object v1, p0, Lcom/google/glass/settings/ui/labs/LabsActivity$OnItemClickListener;->this$0:Lcom/google/glass/settings/ui/labs/LabsActivity;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/labs/LabsActivity;->openOptionsMenu()V

    .line 139
    return-void
.end method
