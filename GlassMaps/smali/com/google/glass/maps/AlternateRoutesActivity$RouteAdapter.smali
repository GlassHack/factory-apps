.class Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/AlternateRoutesActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/AlternateRoutesActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/AlternateRoutesActivity;Lcom/google/glass/maps/AlternateRoutesActivity$1;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;-><init>(Lcom/google/glass/maps/AlternateRoutesActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-static {v0}, Lcom/google/glass/maps/AlternateRoutesActivity;->access$200(Lcom/google/glass/maps/AlternateRoutesActivity;)[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-static {v0}, Lcom/google/glass/maps/AlternateRoutesActivity;->access$200(Lcom/google/glass/maps/AlternateRoutesActivity;)[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-static {v1}, Lcom/google/glass/maps/AlternateRoutesActivity;->access$200(Lcom/google/glass/maps/AlternateRoutesActivity;)[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-static {v1}, Lcom/google/glass/maps/AlternateRoutesActivity;->access$200(Lcom/google/glass/maps/AlternateRoutesActivity;)[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 122
    :goto_1
    return v0

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 129
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-static {v0}, Lcom/google/glass/maps/AlternateRoutesActivity;->access$200(Lcom/google/glass/maps/AlternateRoutesActivity;)[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    aget-object v1, v0, p1

    .line 130
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/google/glass/maps/R$layout;->alternate_route_card:I

    const/4 v3, 0x0

    .line 131
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 132
    sget v0, Lcom/google/glass/maps/R$id;->route_description:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {}, Lcom/google/glass/maps/util/TextFormatter;->getInstance()Lcom/google/glass/maps/util/TextFormatter;

    move-result-object v0

    .line 136
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->l()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/util/TextFormatter;->formatTime(I)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v4

    .line 138
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->n()I

    move-result v5

    .line 137
    invoke-virtual {v0, v4, v5, v7}, Lcom/google/glass/maps/util/TextFormatter;->formatDistance(IIZ)Landroid/text/Spannable;

    move-result-object v0

    .line 140
    iget-object v4, p0, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    sget v5, Lcom/google/glass/maps/R$string;->alternate_route_distance_and_time:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v3, v6, v0

    .line 141
    invoke-virtual {v4, v5, v6}, Lcom/google/glass/maps/AlternateRoutesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 145
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-static {v6, v1}, Lcom/google/glass/maps/AlternateRoutesActivity;->access$300(Lcom/google/glass/maps/AlternateRoutesActivity;Lcom/google/android/maps/driveabout/nav/w;)I

    move-result v1

    invoke-direct {v5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 146
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 145
    invoke-virtual {v4, v5, v0, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 148
    sget v0, Lcom/google/glass/maps/R$id;->status:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    sget v0, Lcom/google/glass/maps/R$id;->map_background:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, p1, v0}, Lcom/google/glass/maps/AlternateRoutesActivity;->access$400(Lcom/google/glass/maps/AlternateRoutesActivity;ILandroid/widget/ImageView;)V

    .line 152
    return-object v2
.end method
