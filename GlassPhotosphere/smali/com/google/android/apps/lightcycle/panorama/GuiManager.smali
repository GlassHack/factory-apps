.class public Lcom/google/android/apps/lightcycle/panorama/GuiManager;
.super Ljava/lang/Object;
.source "GuiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;
    }
.end annotation


# instance fields
.field private elements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;",
            ">;"
        }
    .end annotation
.end field

.field private idCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->elements:Ljava/util/HashMap;

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->idCount:Ljava/lang/Integer;

    .line 25
    return-void
.end method


# virtual methods
.method public addElement(Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;)I
    .locals 3
    .param p1, "element"    # Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->idCount:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->idCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->idCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    .local v0, "newKey":I
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->elements:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return v0
.end method

.method public draw([F)V
    .locals 3
    .param p1, "transform"    # [F

    .prologue
    .line 71
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->elements:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;

    invoke-interface {v2, p1}, Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;->draw([F)V

    goto :goto_0

    .line 74
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;>;"
    :cond_0
    return-void
.end method

.method public handleEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->elements:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;

    invoke-interface {v2, p1}, Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v2, 0x1

    .line 65
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeElement(Ljava/lang/Integer;)Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/GuiManager;->elements:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;

    return-object v0
.end method
