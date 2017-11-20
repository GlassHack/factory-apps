.class public final Lcom/google/glass/timeline/TimelineContract$PostDeleteIntent;
.super Ljava/lang/Object;
.source "TimelineContract.java"

# interfaces
.implements Lcom/google/glass/timeline/TimelineContract$PostDeleteIntentColumns;
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/TimelineContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostDeleteIntent"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "post_delete_intent"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/google/glass/timeline/TimelineContract;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "post_delete_intent"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineContract$PostDeleteIntent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
