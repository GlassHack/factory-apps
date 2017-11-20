.class final Lcom/google/glass/settings/ui/labs/LabsActivity$1;
.super Ljava/lang/Object;
.source "LabsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/labs/LabsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/glass/settings/ui/labs/LabCard;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/settings/ui/labs/LabCard;Lcom/google/glass/settings/ui/labs/LabCard;)I
    .locals 2
    .param p1, "lhs"    # Lcom/google/glass/settings/ui/labs/LabCard;
    .param p2, "rhs"    # Lcom/google/glass/settings/ui/labs/LabCard;

    .prologue
    .line 111
    invoke-interface {p1}, Lcom/google/glass/settings/ui/labs/LabCard;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/glass/settings/ui/labs/LabCard;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 108
    check-cast p1, Lcom/google/glass/settings/ui/labs/LabCard;

    check-cast p2, Lcom/google/glass/settings/ui/labs/LabCard;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/settings/ui/labs/LabsActivity$1;->compare(Lcom/google/glass/settings/ui/labs/LabCard;Lcom/google/glass/settings/ui/labs/LabCard;)I

    move-result v0

    return v0
.end method
