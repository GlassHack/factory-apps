.class Lcom/google/glass/menu/GlassMenuHelperProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/menu/GlassMenuHelperProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/menu/GlassMenuHelperProvider;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/glass/menu/GlassMenuHelperProvider$1;->this$0:Lcom/google/glass/menu/GlassMenuHelperProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/menu/GlassMenuHelper;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/glass/menu/GlassMenuHelperProvider$1;->this$0:Lcom/google/glass/menu/GlassMenuHelperProvider;

    invoke-static {v0}, Lcom/google/glass/menu/GlassMenuHelperProvider;->access$000(Lcom/google/glass/menu/GlassMenuHelperProvider;)Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/glass/menu/GlassMenuHelperProvider$1;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v0

    return-object v0
.end method
