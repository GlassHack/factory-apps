.class Lcom/google/glass/maps/MapHelper$4;
.super Landroid/util/LruCache;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/MapHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;I)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$4;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;[B)I
    .locals 1

    .prologue
    .line 236
    array-length v0, p2

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 234
    check-cast p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/maps/MapHelper$4;->sizeOf(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;[B)I

    move-result v0

    return v0
.end method
